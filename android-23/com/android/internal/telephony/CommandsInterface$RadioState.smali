.class public final enum Lcom/android/internal/telephony/CommandsInterface$RadioState;
.super Ljava/lang/Enum;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CommandsInterface$RadioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 34
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@5
    const-string/jumbo v1, "RADIO_OFF"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@d
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@f
    const-string/jumbo v1, "RADIO_UNAVAILABLE"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    #@15
    .line 35
    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@17
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@19
    const-string/jumbo v1, "RADIO_ON"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 36
    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@21
    .line 33
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@24
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    const-class v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2
    return-object v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2
    if-eq p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isOn()Z
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
