.class public Lcom/google/android/mms/pdu/ReadRecInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "ReadRecInd.java"


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 1
    .param p1, "from"    # Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p2, "messageId"    # [B
    .param p3, "mmsVersion"    # I
    .param p4, "readStatus"    # I
    .param p5, "to"    # [Lcom/google/android/mms/pdu/EncodedStringValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    #@3
    .line 40
    const/16 v0, 0x87

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/ReadRecInd;->setMessageType(I)V

    #@8
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/ReadRecInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    #@b
    .line 42
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/ReadRecInd;->setMessageId([B)V

    #@e
    .line 43
    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/ReadRecInd;->setMmsVersion(I)V

    #@11
    .line 44
    invoke-virtual {p0, p5}, Lcom/google/android/mms/pdu/ReadRecInd;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    #@14
    .line 45
    invoke-virtual {p0, p4}, Lcom/google/android/mms/pdu/ReadRecInd;->setReadStatus(I)V

    #@17
    .line 38
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@3
    .line 53
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x85

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getMessageId()[B
    .locals 2

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8b

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getReadStatus()I
    .locals 2

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x9b

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x97

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x85

    #@4
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    #@7
    .line 71
    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8b

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 90
    return-void
.end method

.method public setReadStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x9b

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 128
    return-void
.end method

.method public setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/mms/pdu/ReadRecInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x97

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 109
    return-void
.end method
