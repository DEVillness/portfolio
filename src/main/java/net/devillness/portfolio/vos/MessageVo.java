package net.devillness.portfolio.vos;

import net.devillness.portfolio.entities.MessageEntity;
import net.devillness.portfolio.enums.MessageResult;
import net.devillness.portfolio.interfaces.IResult;

public class MessageVo extends MessageEntity implements IResult<MessageResult> {
    private MessageResult result;

    public MessageResult getResult() {
        return result;
    }

    public void setResult(MessageResult result) {
        this.result = result;
    }
}