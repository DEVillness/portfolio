package net.devillness.portfolio.mappers;

import net.devillness.portfolio.models.ClientModel;
import net.devillness.portfolio.vos.MessageVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
@SuppressWarnings("UnusedReturnValue")
public interface IRootMapper {
    int insertMessage(@Param("clientModel") ClientModel clientModel,
                      @Param("messageVo") MessageVo messageVo);
}
