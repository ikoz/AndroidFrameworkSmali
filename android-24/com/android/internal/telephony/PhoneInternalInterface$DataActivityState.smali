.class public final enum Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
.super Ljava/lang/Enum;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneInternalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 57
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@7
    const-string/jumbo v1, "NONE"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    #@d
    .line 68
    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@f
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@11
    const-string/jumbo v1, "DATAIN"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@19
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@1b
    const-string/jumbo v1, "DATAOUT"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@23
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@25
    const-string/jumbo v1, "DATAINANDOUT"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@2d
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@2f
    const-string/jumbo v1, "DORMANT"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@37
    .line 56
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@3a
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->$VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    const-class v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1

    #@0
    .prologue
    .line 56
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->$VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@2
    return-object v0
.end method
