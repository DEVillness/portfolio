package net.devillness.portfolio.mappers;

import net.devillness.portfolio.vos.MessageVo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
@SuppressWarnings("UnusedReturnValue")
public interface IRootMapper {
    int insertMessage(MessageVo messageVo);
}
