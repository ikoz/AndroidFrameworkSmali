.class final Landroid/view/inputmethod/InputMethodSubtype$1;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodSubtype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/inputmethod/InputMethodSubtype;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 629
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    #@2
    invoke-direct {v0, p1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 628
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/InputMethodSubtype;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 634
    new-array v0, p1, [Landroid/view/inputmethod/InputMethodSubtype;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 633
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype$1;->newArray(I)[Landroid/view/inputmethod/InputMethodSubtype;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
