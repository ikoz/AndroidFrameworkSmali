.class public final Landroid/provider/ContactsContract$Presence;
.super Landroid/provider/ContactsContract$StatusUpdates;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Presence"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 5500
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/provider/ContactsContract$StatusUpdates;-><init>(Landroid/provider/ContactsContract$StatusUpdates;)V

    #@4
    return-void
.end method
