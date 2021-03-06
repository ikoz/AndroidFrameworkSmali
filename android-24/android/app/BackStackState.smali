.class final Landroid/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BackStackState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 190
    new-instance v0, Landroid/app/BackStackState$1;

    #@2
    invoke-direct {v0}, Landroid/app/BackStackState$1;-><init>()V

    #@5
    .line 189
    sput-object v0, Landroid/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V
    .locals 8
    .param p1, "fm"    # Landroid/app/FragmentManagerImpl;
    .param p2, "bse"    # Landroid/app/BackStackRecord;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    const/4 v2, 0x0

    #@4
    .line 56
    .local v2, "numRemoved":I
    iget-object v3, p2, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@6
    .line 57
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_1

    #@8
    .line 58
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@a
    if-eqz v6, :cond_0

    #@c
    .line 59
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v6

    #@12
    add-int/2addr v2, v6

    #@13
    .line 61
    :cond_0
    iget-object v3, v3, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@15
    goto :goto_0

    #@16
    .line 63
    :cond_1
    iget v6, p2, Landroid/app/BackStackRecord;->mNumOp:I

    #@18
    mul-int/lit8 v6, v6, 0x7

    #@1a
    add-int/2addr v6, v2

    #@1b
    new-array v6, v6, [I

    #@1d
    iput-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    #@1f
    .line 65
    iget-boolean v6, p2, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@21
    if-nez v6, :cond_2

    #@23
    .line 66
    new-instance v6, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v7, "Not on back stack"

    #@28
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v6

    #@2c
    .line 69
    :cond_2
    iget-object v3, p2, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    #@2e
    .line 70
    const/4 v4, 0x0

    #@2f
    .local v4, "pos":I
    move v5, v4

    #@30
    .line 71
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-eqz v3, :cond_5

    #@32
    .line 72
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    #@34
    add-int/lit8 v4, v5, 0x1

    #@36
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    #@38
    aput v7, v6, v5

    #@3a
    .line 73
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    #@3c
    add-int/lit8 v5, v4, 0x1

    #@3e
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@40
    if-eqz v6, :cond_3

    #@42
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@44
    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    #@46
    :goto_2
    aput v6, v7, v4

    #@48
    .line 74
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    #@4a
    add-int/lit8 v4, v5, 0x1

    #@4c
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@4e
    aput v7, v6, v5

    #@50
    .line 75
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    #@52
    add-int/lit8 v5, v4, 0x1

    #@54
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@56
    aput v7, v6, v4

    #@58
    .line 76
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    #@5a
    add-int/lit8 v4, v5, 0x1

    #@5c
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@5e
    aput v7, v6, v5

    #@60
    .line 77
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    #@62
    add-int/lit8 v5, v4, 0x1

    #@64
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@66
    aput v7, v6, v4

    #@68
    .line 78
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@6a
    if-eqz v6, :cond_4

    #@6c
    .line 79
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@6e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@71
    move-result v0

    #@72
    .line 80
    .local v0, "N":I
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    #@74
    add-int/lit8 v4, v5, 0x1

    #@76
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aput v0, v6, v5

    #@78
    .line 81
    const/4 v1, 0x0

    #@79
    .local v1, "i":I
    move v5, v4

    #@7a
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :goto_3
    if-ge v1, v0, :cond_6

    #@7c
    .line 82
    iget-object v7, p0, Landroid/app/BackStackState;->mOps:[I

    #@7e
    add-int/lit8 v4, v5, 0x1

    #@80
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget-object v6, v3, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@85
    move-result-object v6

    #@86
    check-cast v6, Landroid/app/Fragment;

    #@88
    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    #@8a
    aput v6, v7, v5

    #@8c
    .line 81
    add-int/lit8 v1, v1, 0x1

    #@8e
    move v5, v4

    #@8f
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_3

    #@90
    .line 73
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3
    const/4 v6, -0x1

    #@91
    goto :goto_2

    #@92
    .line 85
    :cond_4
    iget-object v6, p0, Landroid/app/BackStackState;->mOps:[I

    #@94
    add-int/lit8 v4, v5, 0x1

    #@96
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    const/4 v7, 0x0

    #@97
    aput v7, v6, v5

    #@99
    .line 87
    :goto_4
    iget-object v3, v3, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    #@9b
    move v5, v4

    #@9c
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_1

    #@9d
    .line 89
    :cond_5
    iget v6, p2, Landroid/app/BackStackRecord;->mTransition:I

    #@9f
    iput v6, p0, Landroid/app/BackStackState;->mTransition:I

    #@a1
    .line 90
    iget v6, p2, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@a3
    iput v6, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    #@a5
    .line 91
    iget-object v6, p2, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@a7
    iput-object v6, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    #@a9
    .line 92
    iget v6, p2, Landroid/app/BackStackRecord;->mIndex:I

    #@ab
    iput v6, p0, Landroid/app/BackStackState;->mIndex:I

    #@ad
    .line 93
    iget v6, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@af
    iput v6, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    #@b1
    .line 94
    iget-object v6, p2, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@b3
    iput-object v6, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@b5
    .line 95
    iget v6, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@b7
    iput v6, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    #@b9
    .line 96
    iget-object v6, p2, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@bb
    iput-object v6, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@bd
    .line 97
    iget-object v6, p2, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@bf
    iput-object v6, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@c1
    .line 98
    iget-object v6, p2, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@c3
    iput-object v6, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@c5
    .line 54
    return-void

    #@c6
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_6
    move v4, v5

    #@c7
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_4
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    #@9
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/app/BackStackState;->mTransition:I

    #@f
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    #@15
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    #@1b
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/app/BackStackState;->mIndex:I

    #@21
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    #@27
    .line 108
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/lang/CharSequence;

    #@2f
    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@31
    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    #@37
    .line 110
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@39
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/lang/CharSequence;

    #@3f
    iput-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@41
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@47
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@4d
    .line 101
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 172
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;
    .locals 14
    .param p1, "fm"    # Landroid/app/FragmentManagerImpl;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    .line 116
    new-instance v1, Landroid/app/BackStackRecord;

    #@3
    invoke-direct {v1, p1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    #@6
    .line 117
    .local v1, "bse":Landroid/app/BackStackRecord;
    const/4 v7, 0x0

    #@7
    .line 118
    .local v7, "pos":I
    const/4 v5, 0x0

    #@8
    .line 119
    .local v5, "num":I
    :goto_0
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    #@a
    array-length v10, v10

    #@b
    if-ge v7, v10, :cond_4

    #@d
    .line 120
    new-instance v6, Landroid/app/BackStackRecord$Op;

    #@f
    invoke-direct {v6}, Landroid/app/BackStackRecord$Op;-><init>()V

    #@12
    .line 121
    .local v6, "op":Landroid/app/BackStackRecord$Op;
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    #@14
    add-int/lit8 v8, v7, 0x1

    #@16
    .end local v7    # "pos":I
    .local v8, "pos":I
    aget v10, v10, v7

    #@18
    iput v10, v6, Landroid/app/BackStackRecord$Op;->cmd:I

    #@1a
    .line 122
    sget-boolean v10, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@1c
    if-eqz v10, :cond_0

    #@1e
    .line 123
    const-string/jumbo v10, "FragmentManager"

    #@21
    .line 124
    new-instance v11, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v12, "Instantiate "

    #@29
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v11

    #@2d
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v11

    #@31
    const-string/jumbo v12, " op #"

    #@34
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v11

    #@38
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v11

    #@3c
    const-string/jumbo v12, " base fragment #"

    #@3f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v11

    #@43
    iget-object v12, p0, Landroid/app/BackStackState;->mOps:[I

    #@45
    aget v12, v12, v8

    #@47
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v11

    #@4b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v11

    #@4f
    .line 123
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 126
    :cond_0
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    #@54
    add-int/lit8 v7, v8, 0x1

    #@56
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v3, v10, v8

    #@58
    .line 127
    .local v3, "findex":I
    if-ltz v3, :cond_2

    #@5a
    .line 128
    iget-object v10, p1, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Landroid/app/Fragment;

    #@62
    .line 129
    .local v2, "f":Landroid/app/Fragment;
    iput-object v2, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@64
    .line 133
    .end local v2    # "f":Landroid/app/Fragment;
    :goto_1
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    #@66
    add-int/lit8 v8, v7, 0x1

    #@68
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v10, v10, v7

    #@6a
    iput v10, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@6c
    .line 134
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    #@6e
    add-int/lit8 v7, v8, 0x1

    #@70
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v10, v10, v8

    #@72
    iput v10, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@74
    .line 135
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    #@76
    add-int/lit8 v8, v7, 0x1

    #@78
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v10, v10, v7

    #@7a
    iput v10, v6, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@7c
    .line 136
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    #@7e
    add-int/lit8 v7, v8, 0x1

    #@80
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v10, v10, v8

    #@82
    iput v10, v6, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@84
    .line 137
    iget-object v10, p0, Landroid/app/BackStackState;->mOps:[I

    #@86
    add-int/lit8 v8, v7, 0x1

    #@88
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v0, v10, v7

    #@8a
    .line 138
    .local v0, "N":I
    if-lez v0, :cond_3

    #@8c
    .line 139
    new-instance v10, Ljava/util/ArrayList;

    #@8e
    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@91
    iput-object v10, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@93
    .line 140
    const/4 v4, 0x0

    #@94
    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_3

    #@96
    .line 141
    sget-boolean v10, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@98
    if-eqz v10, :cond_1

    #@9a
    .line 142
    const-string/jumbo v10, "FragmentManager"

    #@9d
    .line 143
    new-instance v11, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v12, "Instantiate "

    #@a5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v11

    #@a9
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v11

    #@ad
    const-string/jumbo v12, " set remove fragment #"

    #@b0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v11

    #@b4
    iget-object v12, p0, Landroid/app/BackStackState;->mOps:[I

    #@b6
    aget v12, v12, v8

    #@b8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v11

    #@bc
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v11

    #@c0
    .line 142
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 145
    :cond_1
    iget-object v10, p1, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@c5
    iget-object v11, p0, Landroid/app/BackStackState;->mOps:[I

    #@c7
    add-int/lit8 v7, v8, 0x1

    #@c9
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v11, v11, v8

    #@cb
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ce
    move-result-object v9

    #@cf
    check-cast v9, Landroid/app/Fragment;

    #@d1
    .line 146
    .local v9, "r":Landroid/app/Fragment;
    iget-object v10, v6, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@d3
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d6
    .line 140
    add-int/lit8 v4, v4, 0x1

    #@d8
    move v8, v7

    #@d9
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_2

    #@da
    .line 131
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v8    # "pos":I
    .end local v9    # "r":Landroid/app/Fragment;
    .restart local v7    # "pos":I
    :cond_2
    const/4 v10, 0x0

    #@db
    iput-object v10, v6, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    #@dd
    goto :goto_1

    #@de
    .end local v7    # "pos":I
    .restart local v0    # "N":I
    .restart local v8    # "pos":I
    :cond_3
    move v7, v8

    #@df
    .line 149
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    iget v10, v6, Landroid/app/BackStackRecord$Op;->enterAnim:I

    #@e1
    iput v10, v1, Landroid/app/BackStackRecord;->mEnterAnim:I

    #@e3
    .line 150
    iget v10, v6, Landroid/app/BackStackRecord$Op;->exitAnim:I

    #@e5
    iput v10, v1, Landroid/app/BackStackRecord;->mExitAnim:I

    #@e7
    .line 151
    iget v10, v6, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    #@e9
    iput v10, v1, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    #@eb
    .line 152
    iget v10, v6, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    #@ed
    iput v10, v1, Landroid/app/BackStackRecord;->mPopExitAnim:I

    #@ef
    .line 153
    invoke-virtual {v1, v6}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    #@f2
    .line 154
    add-int/lit8 v5, v5, 0x1

    #@f4
    goto/16 :goto_0

    #@f6
    .line 156
    .end local v0    # "N":I
    .end local v3    # "findex":I
    .end local v6    # "op":Landroid/app/BackStackRecord$Op;
    :cond_4
    iget v10, p0, Landroid/app/BackStackState;->mTransition:I

    #@f8
    iput v10, v1, Landroid/app/BackStackRecord;->mTransition:I

    #@fa
    .line 157
    iget v10, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    #@fc
    iput v10, v1, Landroid/app/BackStackRecord;->mTransitionStyle:I

    #@fe
    .line 158
    iget-object v10, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    #@100
    iput-object v10, v1, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    #@102
    .line 159
    iget v10, p0, Landroid/app/BackStackState;->mIndex:I

    #@104
    iput v10, v1, Landroid/app/BackStackRecord;->mIndex:I

    #@106
    .line 160
    iput-boolean v13, v1, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    #@108
    .line 161
    iget v10, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    #@10a
    iput v10, v1, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@10c
    .line 162
    iget-object v10, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@10e
    iput-object v10, v1, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@110
    .line 163
    iget v10, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    #@112
    iput v10, v1, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@114
    .line 164
    iget-object v10, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@116
    iput-object v10, v1, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@118
    .line 165
    iget-object v10, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@11a
    iput-object v10, v1, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@11c
    .line 166
    iget-object v10, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@11e
    iput-object v10, v1, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@120
    .line 167
    invoke-virtual {v1, v13}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@123
    .line 168
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 176
    iget-object v0, p0, Landroid/app/BackStackState;->mOps:[I

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@6
    .line 177
    iget v0, p0, Landroid/app/BackStackState;->mTransition:I

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 178
    iget v0, p0, Landroid/app/BackStackState;->mTransitionStyle:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 179
    iget-object v0, p0, Landroid/app/BackStackState;->mName:Ljava/lang/String;

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 180
    iget v0, p0, Landroid/app/BackStackState;->mIndex:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 181
    iget v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleRes:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 182
    iget-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@21
    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@24
    .line 183
    iget v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleRes:I

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 184
    iget-object v0, p0, Landroid/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@2b
    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2e
    .line 185
    iget-object v0, p0, Landroid/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@33
    .line 186
    iget-object v0, p0, Landroid/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@38
    .line 175
    return-void
.end method
