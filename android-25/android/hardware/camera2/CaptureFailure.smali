.class public Landroid/hardware/camera2/CaptureFailure;
.super Ljava/lang/Object;
.source "CaptureFailure.java"


# static fields
.field public static final REASON_ERROR:I = 0x0

.field public static final REASON_FLUSHED:I = 0x1


# instance fields
.field private final mDropped:Z

.field private final mFrameNumber:J

.field private final mReason:I

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mSequenceId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest;IZIJ)V
    .locals 1
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "reason"    # I
    .param p3, "dropped"    # Z
    .param p4, "sequenceId"    # I
    .param p5, "frameNumber"    # J

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    iput-object p1, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@5
    .line 71
    iput p2, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    #@7
    .line 72
    iput-boolean p3, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    #@9
    .line 73
    iput p4, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    #@b
    .line 74
    iput-wide p5, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    #@d
    .line 69
    return-void
.end method


# virtual methods
.method public getFrameNumber()J
    .locals 2

    #@0
    .prologue
    .line 115
    iget-wide v0, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:J

    #@2
    return-wide v0
.end method

.method public getReason()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    #@2
    return v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    #@2
    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    #@0
    .prologue
    .line 156
    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    #@2
    return v0
.end method

.method public wasImageCaptured()Z
    .locals 1

    #@0
    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method
