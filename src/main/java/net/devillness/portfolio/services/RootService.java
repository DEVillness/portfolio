package net.devillness.portfolio.services;

import net.devillness.portfolio.entities.MessageEntity;
import net.devillness.portfolio.mappers.IRootMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RootService {
    private final IRootMapper rootMapper;

    @Autowired
    public RootService(IRootMapper rootMapper) {
        this.rootMapper = rootMapper;
    }

    public void insertMessage(MessageEntity messageEntity) {
        this.rootMapper.insertMessage(messageEntity);
    }
}
