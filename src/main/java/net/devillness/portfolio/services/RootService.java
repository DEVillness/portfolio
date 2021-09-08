package net.devillness.portfolio.services;

import net.devillness.portfolio.enums.MessageResult;
import net.devillness.portfolio.vos.MessageVo;
import net.devillness.portfolio.mappers.IRootMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RootService {
    public static class RegExp {
        public static final String EMAIL = "^(?=.{8,50}$)([0-9a-z_]{4,})@([0-9a-z][0-9a-z\\-]*[0-9a-z]\\.)?([0-9a-z][0-9a-z\\-]*[0-9a-z])\\.([a-z]{2,15})(\\.[a-z]{2})?$";
        public static final String NAME = "^([0-9a-zA-Z가-힣]{1,10})$";
    }

    private final IRootMapper rootMapper;

    @Autowired
    public RootService(IRootMapper rootMapper) {
        this.rootMapper = rootMapper;
    }

    public static boolean checkName(String s) {
        return s != null && s.matches(RegExp.NAME);
    }

    public static boolean checkEmail(String s) {
        return s != null && s.matches(RegExp.EMAIL);
    }

    public void insertMessage(MessageVo messageVo) {
        if (!RootService.checkEmail(messageVo.getEmail()) ||
                !RootService.checkName(messageVo.getName())) {
            messageVo.setResult(MessageResult.NORMALIZATION_FAILURE);
            return;
        }
        this.rootMapper.insertMessage(messageVo);
        messageVo.setResult(MessageResult.SUCCESS);
    }
}
