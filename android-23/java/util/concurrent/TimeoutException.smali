.class public Ljava/util/concurrent/TimeoutException;
.super Ljava/lang/Exception;
.source "TimeoutException.java"


# static fields
.field private static final serialVersionUID:J = 0x1a6172bddbe4f56aL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 35
    return-void
.end method