.class Landroid/widget/TextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/widget/TextClock;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextClock;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 143
    iput-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    #@2
    .line 144
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    .line 143
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    #@2
    invoke-static {v0}, Landroid/widget/TextClock;->-wrap0(Landroid/widget/TextClock;)V

    #@5
    .line 150
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    #@7
    invoke-static {v0}, Landroid/widget/TextClock;->-wrap2(Landroid/widget/TextClock;)V

    #@a
    .line 148
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    #@2
    invoke-static {v0}, Landroid/widget/TextClock;->-wrap0(Landroid/widget/TextClock;)V

    #@5
    .line 156
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    #@7
    invoke-static {v0}, Landroid/widget/TextClock;->-wrap2(Landroid/widget/TextClock;)V

    #@a
    .line 154
    return-void
.end method
