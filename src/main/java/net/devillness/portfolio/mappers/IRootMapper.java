package net.devillness.portfolio.mappers;

import net.devillness.portfolio.entities.MessageEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
@SuppressWarnings("UnusedReturnValue")
public interface IRootMapper {
    int insertMessage(MessageEntity messageEntity);
}
