.class public Lcom/google/android/util/AbstractMessageParser$Acronym;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Acronym"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1160
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@2
    invoke-direct {p0, v0, p1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    #@5
    .line 1161
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Acronym;->value:Ljava/lang/String;

    #@7
    .line 1159
    return-void
.end method


# virtual methods
.method public getInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1169
    invoke-super {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getInfo()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 1170
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b
    .line 1171
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Acronym;->getValue()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12
    .line 1172
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1164
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Acronym;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isHtml()Z
    .locals 1

    #@0
    .prologue
    .line 1166
    const/4 v0, 0x0

    #@1
    return v0
.end method
