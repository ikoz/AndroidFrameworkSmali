.class final enum Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;
.super Ljava/lang/Enum;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RetryFailures"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

.field public static final enum ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

.field public static final enum ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 780
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@4
    const-string/jumbo v1, "ALWAYS"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;-><init>(Ljava/lang/String;I)V

    #@a
    .line 781
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@c
    .line 782
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@e
    const-string/jumbo v1, "ONLY_ON_CHANGE"

    #@11
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;-><init>(Ljava/lang/String;I)V

    #@14
    .line 785
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@16
    .line 779
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@19
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 779
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 779
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;
    .locals 1

    #@0
    .prologue
    .line 779
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    #@2
    return-object v0
.end method
