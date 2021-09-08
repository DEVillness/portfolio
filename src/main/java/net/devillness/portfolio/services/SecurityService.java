package net.devillness.portfolio.services;

import net.devillness.portfolio.interfaces.IResult;
import net.devillness.portfolio.mappers.ISecurityMapper;
import net.devillness.portfolio.models.ClientModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SecurityService {
    private static class Config {
        public static final int ILLEGAL_LOG_LOOK_BACK_SECONDS = 60;
        public static final int ILLEGAL_LOG_LIMIT_COUNT = 5;
        public static final int IP_BLOCK_POW_FACTOR = 2;

        private Config() {
        }
    }

    private final ISecurityMapper securityMapper;

    @Autowired
    public SecurityService(ISecurityMapper securityMapper) {
        this.securityMapper = securityMapper;
    }

    public boolean isIpBlocked(ClientModel clientModel) {
        return this.securityMapper.selectBlockedIpCount(clientModel) > 0;
    }

    public void putIllegalLog(ClientModel clientModel, IResult<? extends Enum<?>> result) {
        this.securityMapper.insertIllegalLog(clientModel, result);
        if (this.securityMapper.selectIllegalLogCount(clientModel, Config.ILLEGAL_LOG_LOOK_BACK_SECONDS) < Config.ILLEGAL_LOG_LIMIT_COUNT) {
            return;
        }
        int blockedIpCount = this.securityMapper.selectBlockedIpCountSoFar(clientModel);
        int minutesToBlock;
        try {
            minutesToBlock = (int) Math.pow(blockedIpCount + 1, Config.IP_BLOCK_POW_FACTOR);
            if (minutesToBlock < blockedIpCount + 1) {
                throw new Exception();
            }
        } catch (Exception ignored) {
            minutesToBlock = Integer.MAX_VALUE;
        }
        this.securityMapper.insertBlockedIp(clientModel, minutesToBlock);
    }
}