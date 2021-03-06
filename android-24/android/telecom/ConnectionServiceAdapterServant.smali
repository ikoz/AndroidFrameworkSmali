.class final Landroid/telecom/ConnectionServiceAdapterServant;
.super Ljava/lang/Object;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConnectionServiceAdapterServant$1;,
        Landroid/telecom/ConnectionServiceAdapterServant$2;
    }
.end annotation


# static fields
.field private static final MSG_ADD_CONFERENCE_CALL:I = 0xa

.field private static final MSG_ADD_EXISTING_CONNECTION:I = 0x15

.field private static final MSG_HANDLE_CREATE_CONNECTION_COMPLETE:I = 0x1

.field private static final MSG_ON_CONNECTION_EVENT:I = 0x1a

.field private static final MSG_ON_POST_DIAL_CHAR:I = 0x16

.field private static final MSG_ON_POST_DIAL_WAIT:I = 0xc

.field private static final MSG_PUT_EXTRAS:I = 0x18

.field private static final MSG_QUERY_REMOTE_CALL_SERVICES:I = 0xd

.field private static final MSG_REMOVE_CALL:I = 0xb

.field private static final MSG_REMOVE_EXTRAS:I = 0x19

.field private static final MSG_SET_ACTIVE:I = 0x2

.field private static final MSG_SET_ADDRESS:I = 0x12

.field private static final MSG_SET_CALLER_DISPLAY_NAME:I = 0x13

.field private static final MSG_SET_CONFERENCEABLE_CONNECTIONS:I = 0x14

.field private static final MSG_SET_CONFERENCE_MERGE_FAILED:I = 0x17

.field private static final MSG_SET_CONNECTION_CAPABILITIES:I = 0x8

.field private static final MSG_SET_CONNECTION_PROPERTIES:I = 0x1b

.field private static final MSG_SET_DIALING:I = 0x4

.field private static final MSG_SET_DISCONNECTED:I = 0x5

.field private static final MSG_SET_IS_CONFERENCED:I = 0x9

.field private static final MSG_SET_IS_VOIP_AUDIO_MODE:I = 0x10

.field private static final MSG_SET_ON_HOLD:I = 0x6

.field private static final MSG_SET_RINGBACK_REQUESTED:I = 0x7

.field private static final MSG_SET_RINGING:I = 0x3

.field private static final MSG_SET_STATUS_HINTS:I = 0x11

.field private static final MSG_SET_VIDEO_CALL_PROVIDER:I = 0xf

.field private static final MSG_SET_VIDEO_STATE:I = 0xe


# instance fields
.field private final mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private final mStub:Lcom/android/internal/telecom/IConnectionServiceAdapter;


# direct methods
.method static synthetic -get0(Landroid/telecom/ConnectionServiceAdapterServant;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@0
    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    new-instance v0, Landroid/telecom/ConnectionServiceAdapterServant$1;

    #@5
    invoke-direct {v0, p0}, Landroid/telecom/ConnectionServiceAdapterServant$1;-><init>(Landroid/telecom/ConnectionServiceAdapterServant;)V

    #@8
    iput-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mHandler:Landroid/os/Handler;

    #@a
    .line 273
    new-instance v0, Landroid/telecom/ConnectionServiceAdapterServant$2;

    #@c
    invoke-direct {v0, p0}, Landroid/telecom/ConnectionServiceAdapterServant$2;-><init>(Landroid/telecom/ConnectionServiceAdapterServant;)V

    #@f
    iput-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mStub:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@11
    .line 475
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@13
    .line 474
    return-void
.end method


# virtual methods
.method public getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .locals 1

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant;->mStub:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    #@2
    return-object v0
.end method
