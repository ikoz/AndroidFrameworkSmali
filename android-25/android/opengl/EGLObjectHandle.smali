.class public abstract Landroid/opengl/EGLObjectHandle;
.super Ljava/lang/Object;
.source "EGLObjectHandle.java"


# instance fields
.field private final mHandle:J


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "handle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    int-to-long v0, p1

    #@4
    iput-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    #@6
    .line 32
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1
    .param p1, "handle"    # J

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-wide p1, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    #@5
    .line 35
    return-void
.end method


# virtual methods
.method public getHandle()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 44
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    #@2
    const-wide v2, 0xffffffffL

    #@7
    and-long/2addr v0, v2

    #@8
    iget-wide v2, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@10
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@13
    throw v0

    #@14
    .line 47
    :cond_0
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    #@16
    long-to-int v0, v0

    #@17
    return v0
.end method

.method public getNativeHandle()J
    .locals 2

    #@0
    .prologue
    .line 58
    iget-wide v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    #@2
    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 67
    iget-wide v2, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    #@2
    iget-wide v4, p0, Landroid/opengl/EGLObjectHandle;->mHandle:J

    #@4
    const/16 v1, 0x20

    #@6
    ushr-long/2addr v4, v1

    #@7
    xor-long/2addr v2, v4

    #@8
    long-to-int v1, v2

    #@9
    add-int/lit16 v0, v1, 0x20f

    #@b
    .line 68
    .local v0, "result":I
    return v0
.end method
