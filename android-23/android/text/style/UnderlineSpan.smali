.class public Landroid/text/style/UnderlineSpan;
.super Landroid/text/style/CharacterStyle;
.source "UnderlineSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/text/style/UnderlineSpan;->getSpanTypeIdInternal()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    #@0
    .prologue
    .line 38
    const/4 v0, 0x6

    #@1
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 55
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    #@4
    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/text/style/UnderlineSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 45
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 50
    return-void
.end method
