.class final Landroid/app/usage/UsageStats$1;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageStats;
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
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/UsageStats;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 166
    new-instance v0, Landroid/app/usage/UsageStats;

    #@2
    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    #@5
    .line 167
    .local v0, "stats":Landroid/app/usage/UsageStats;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@b
    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    #@11
    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@17
    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1a
    move-result-wide v2

    #@1b
    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@1d
    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@20
    move-result-wide v2

    #@21
    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@23
    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    #@29
    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v1

    #@2d
    iput v1, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@2f
    .line 174
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/UsageStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/app/usage/UsageStats;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 179
    new-array v0, p1, [Landroid/app/usage/UsageStats;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 178
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageStats$1;->newArray(I)[Landroid/app/usage/UsageStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
