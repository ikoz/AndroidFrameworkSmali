.class public Landroid/widget/DigitalClock;
.super Landroid/widget/TextView;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DigitalClock$FormatChangeObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mCalendar:Ljava/util/Calendar;

.field mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method static synthetic -get0(Landroid/widget/DigitalClock;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/DigitalClock;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/DigitalClock;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    #@6
    .line 51
    invoke-direct {p0}, Landroid/widget/DigitalClock;->initClock()V

    #@9
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    #@6
    .line 56
    invoke-direct {p0}, Landroid/widget/DigitalClock;->initClock()V

    #@9
    .line 54
    return-void
.end method

.method private initClock()V
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    #@a
    .line 59
    :cond_0
    return-void
.end method

.method private setFormat()V
    .locals 1

    #@0
    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    #@a
    .line 102
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 120
    const-class v0, Landroid/widget/DigitalClock;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    #@3
    .line 68
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    #@6
    .line 70
    new-instance v0, Landroid/widget/DigitalClock$FormatChangeObserver;

    #@8
    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$FormatChangeObserver;-><init>(Landroid/widget/DigitalClock;)V

    #@b
    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    #@d
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v0

    #@15
    .line 72
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@17
    iget-object v2, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    #@19
    const/4 v3, 0x1

    #@1a
    .line 71
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1d
    .line 73
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    #@20
    .line 75
    new-instance v0, Landroid/os/Handler;

    #@22
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@25
    iput-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    #@27
    .line 80
    new-instance v0, Landroid/widget/DigitalClock$1;

    #@29
    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$1;-><init>(Landroid/widget/DigitalClock;)V

    #@2c
    iput-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    #@2e
    .line 91
    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    #@30
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@33
    .line 66
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    #@3
    .line 97
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    #@6
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v0

    #@e
    .line 99
    iget-object v1, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    #@10
    .line 98
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@13
    .line 95
    return-void
.end method
