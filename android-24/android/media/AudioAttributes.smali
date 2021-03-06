.class public final Landroid/media/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAttributes$1;,
        Landroid/media/AudioAttributes$Builder;
    }
.end annotation


# static fields
.field private static final ALL_PARCEL_FLAGS:I = 0x1

.field private static final ATTR_PARCEL_IS_NULL_BUNDLE:I = -0x7b9

.field private static final ATTR_PARCEL_IS_VALID_BUNDLE:I = 0x7bc

.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_ALL:I = 0x1ff

.field private static final FLAG_ALL_PUBLIC:I = 0x111

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final FLAG_BEACON:I = 0x8

.field public static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40

.field public static final FLAG_BYPASS_MUTE:I = 0x80

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field public static final FLAG_HW_HOTWORD:I = 0x20

.field public static final FLAG_LOW_LATENCY:I = 0x100

.field public static final FLAG_SCO:I = 0x4

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLATTEN_TAGS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioAttributes"

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_UNKNOWN:I = 0x0

.field public static final USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContentType:I

.field private mFlags:I

.field private mFormattedTags:Ljava/lang/String;

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method static synthetic -get0(Landroid/media/AudioAttributes;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/media/AudioAttributes;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/media/AudioAttributes;)Ljava/util/HashSet;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/AudioAttributes;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/media/AudioAttributes;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/media/AudioAttributes;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/AudioAttributes;->mContentType:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/media/AudioAttributes;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/media/AudioAttributes;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/AudioAttributes;->mSource:I

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Landroid/media/AudioAttributes;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 697
    new-instance v0, Landroid/media/AudioAttributes$1;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    #@5
    .line 696
    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 67
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 251
    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@6
    .line 252
    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    #@8
    .line 253
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/media/AudioAttributes;->mSource:I

    #@b
    .line 254
    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@d
    .line 259
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 251
    iput v4, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@6
    .line 252
    iput v4, p0, Landroid/media/AudioAttributes;->mContentType:I

    #@8
    .line 253
    const/4 v3, -0x1

    #@9
    iput v3, p0, Landroid/media/AudioAttributes;->mSource:I

    #@b
    .line 254
    iput v4, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@d
    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v3

    #@11
    iput v3, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@13
    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v3

    #@17
    iput v3, p0, Landroid/media/AudioAttributes;->mContentType:I

    #@19
    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    iput v3, p0, Landroid/media/AudioAttributes;->mSource:I

    #@1f
    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    iput v3, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@25
    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v3

    #@29
    and-int/lit8 v3, v3, 0x1

    #@2b
    const/4 v4, 0x1

    #@2c
    if-ne v3, v4, :cond_0

    #@2e
    const/4 v0, 0x1

    #@2f
    .line 673
    .local v0, "hasFlattenedTags":Z
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    #@31
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@34
    iput-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    #@36
    .line 674
    if-eqz v0, :cond_1

    #@38
    .line 675
    new-instance v3, Ljava/lang/String;

    #@3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@41
    iput-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    #@43
    .line 676
    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    #@45
    iget-object v4, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    #@47
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4a
    .line 684
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v3

    #@4e
    sparse-switch v3, :sswitch_data_0

    #@51
    .line 692
    const-string/jumbo v3, "AudioAttributes"

    #@54
    const-string/jumbo v4, "Illegal value unmarshalling AudioAttributes, can\'t initialize bundle"

    #@57
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 667
    :goto_2
    return-void

    #@5b
    .line 672
    .end local v0    # "hasFlattenedTags":Z
    :cond_0
    const/4 v0, 0x0

    #@5c
    .restart local v0    # "hasFlattenedTags":Z
    goto :goto_0

    #@5d
    .line 678
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    .line 679
    .local v2, "tagsArray":[Ljava/lang/String;
    array-length v3, v2

    #@62
    add-int/lit8 v1, v3, -0x1

    #@64
    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_2

    #@66
    .line 680
    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    #@68
    aget-object v4, v2, v1

    #@6a
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@6d
    .line 679
    add-int/lit8 v1, v1, -0x1

    #@6f
    goto :goto_3

    #@70
    .line 682
    :cond_2
    const-string/jumbo v3, ";"

    #@73
    iget-object v4, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    #@75
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    iput-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    #@7b
    goto :goto_1

    #@7c
    .line 686
    .end local v1    # "i":I
    .end local v2    # "tagsArray":[Ljava/lang/String;
    :sswitch_0
    const/4 v3, 0x0

    #@7d
    iput-object v3, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@7f
    goto :goto_2

    #@80
    .line 689
    :sswitch_1
    new-instance v3, Landroid/os/Bundle;

    #@82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@85
    move-result-object v4

    #@86
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@89
    iput-object v3, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@8b
    goto :goto_2

    #@8c
    .line 684
    :sswitch_data_0
    .sparse-switch
        -0x7b9 -> :sswitch_0
        0x7bc -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static getVolumeControlStream(Landroid/media/AudioAttributes;)I
    .locals 2
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 825
    if-nez p0, :cond_0

    #@2
    .line 826
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid null audio attributes"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 828
    :cond_0
    const/4 v0, 0x1

    #@c
    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 839
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static toVolumeStreamType(ZLandroid/media/AudioAttributes;)I
    .locals 5
    .param p0, "fromGetVolumeControlStream"    # Z
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v2, 0x3

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 844
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    #@7
    move-result v3

    #@8
    and-int/lit8 v3, v3, 0x1

    #@a
    if-ne v3, v0, :cond_1

    #@c
    .line 845
    if-eqz p0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    .line 846
    :cond_0
    const/4 v0, 0x7

    #@10
    goto :goto_0

    #@11
    .line 848
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    #@14
    move-result v3

    #@15
    and-int/lit8 v3, v3, 0x4

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 849
    if-eqz p0, :cond_2

    #@1b
    move v0, v1

    #@1c
    :goto_1
    return v0

    #@1d
    .line 850
    :cond_2
    const/4 v0, 0x6

    #@1e
    goto :goto_1

    #@1f
    .line 854
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    #@22
    move-result v3

    #@23
    packed-switch v3, :pswitch_data_0

    #@26
    .line 881
    if-eqz p0, :cond_6

    #@28
    .line 882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "Unknown usage value "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    #@39
    move-result v2

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 883
    const-string/jumbo v2, " in audio attributes"

    #@41
    .line 882
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    .line 859
    :pswitch_0
    return v2

    #@4e
    .line 861
    :pswitch_1
    return v0

    #@4f
    .line 863
    :pswitch_2
    return v1

    #@50
    .line 865
    :pswitch_3
    if-eqz p0, :cond_4

    #@52
    :goto_2
    return v1

    #@53
    .line 866
    :cond_4
    const/16 v1, 0x8

    #@55
    goto :goto_2

    #@56
    .line 868
    :pswitch_4
    return v4

    #@57
    .line 870
    :pswitch_5
    const/4 v0, 0x2

    #@58
    return v0

    #@59
    .line 876
    :pswitch_6
    const/4 v0, 0x5

    #@5a
    return v0

    #@5b
    .line 878
    :pswitch_7
    if-eqz p0, :cond_5

    #@5d
    .line 879
    const/high16 v0, -0x80000000

    #@5f
    .line 878
    :goto_3
    return v0

    #@60
    :cond_5
    move v0, v2

    #@61
    .line 879
    goto :goto_3

    #@62
    .line 885
    :cond_6
    return v2

    #@63
    .line 854
    nop

    #@64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static usageForLegacyStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    .line 786
    packed-switch p0, :pswitch_data_0

    #@4
    .line 807
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 788
    :pswitch_0
    return v0

    #@7
    .line 791
    :pswitch_1
    const/16 v0, 0xd

    #@9
    return v0

    #@a
    .line 793
    :pswitch_2
    const/4 v0, 0x6

    #@b
    return v0

    #@c
    .line 795
    :pswitch_3
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 797
    :pswitch_4
    const/4 v0, 0x4

    #@f
    return v0

    #@10
    .line 799
    :pswitch_5
    const/4 v0, 0x5

    #@11
    return v0

    #@12
    .line 801
    :pswitch_6
    return v0

    #@13
    .line 803
    :pswitch_7
    const/4 v0, 0x3

    #@14
    return v0

    #@15
    .line 805
    :pswitch_8
    const/16 v0, 0xb

    #@17
    return v0

    #@18
    .line 786
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static usageToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "usage"    # I

    #@0
    .prologue
    .line 748
    packed-switch p0, :pswitch_data_0

    #@3
    .line 780
    new-instance v0, Ljava/lang/String;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "unknown usage "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@1c
    return-object v0

    #@1d
    .line 750
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    #@1f
    const-string/jumbo v1, "USAGE_UNKNOWN"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@25
    return-object v0

    #@26
    .line 752
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    #@28
    const-string/jumbo v1, "USAGE_MEDIA"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@2e
    return-object v0

    #@2f
    .line 754
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    #@31
    const-string/jumbo v1, "USAGE_VOICE_COMMUNICATION"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@37
    return-object v0

    #@38
    .line 756
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    #@3a
    const-string/jumbo v1, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    #@3d
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@40
    return-object v0

    #@41
    .line 758
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    #@43
    const-string/jumbo v1, "USAGE_ALARM"

    #@46
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@49
    return-object v0

    #@4a
    .line 760
    :pswitch_5
    new-instance v0, Ljava/lang/String;

    #@4c
    const-string/jumbo v1, "USAGE_NOTIFICATION"

    #@4f
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@52
    return-object v0

    #@53
    .line 762
    :pswitch_6
    new-instance v0, Ljava/lang/String;

    #@55
    const-string/jumbo v1, "USAGE_NOTIFICATION_RINGTONE"

    #@58
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@5b
    return-object v0

    #@5c
    .line 764
    :pswitch_7
    new-instance v0, Ljava/lang/String;

    #@5e
    const-string/jumbo v1, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    #@61
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@64
    return-object v0

    #@65
    .line 766
    :pswitch_8
    new-instance v0, Ljava/lang/String;

    #@67
    const-string/jumbo v1, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    #@6a
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@6d
    return-object v0

    #@6e
    .line 768
    :pswitch_9
    new-instance v0, Ljava/lang/String;

    #@70
    const-string/jumbo v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    #@73
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@76
    return-object v0

    #@77
    .line 770
    :pswitch_a
    new-instance v0, Ljava/lang/String;

    #@79
    const-string/jumbo v1, "USAGE_NOTIFICATION_EVENT"

    #@7c
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@7f
    return-object v0

    #@80
    .line 772
    :pswitch_b
    new-instance v0, Ljava/lang/String;

    #@82
    const-string/jumbo v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    #@85
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@88
    return-object v0

    #@89
    .line 774
    :pswitch_c
    new-instance v0, Ljava/lang/String;

    #@8b
    const-string/jumbo v1, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    #@8e
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@91
    return-object v0

    #@92
    .line 776
    :pswitch_d
    new-instance v0, Ljava/lang/String;

    #@94
    const-string/jumbo v1, "USAGE_ASSISTANCE_SONIFICATION"

    #@97
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@9a
    return-object v0

    #@9b
    .line 778
    :pswitch_e
    new-instance v0, Ljava/lang/String;

    #@9d
    const-string/jumbo v1, "USAGE_GAME"

    #@a0
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@a3
    return-object v0

    #@a4
    .line 748
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 626
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 713
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 714
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 716
    check-cast v0, Landroid/media/AudioAttributes;

    #@15
    .line 718
    .local v0, "that":Landroid/media/AudioAttributes;
    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    #@17
    iget v3, v0, Landroid/media/AudioAttributes;->mContentType:I

    #@19
    if-ne v2, v3, :cond_3

    #@1b
    .line 719
    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@1d
    iget v3, v0, Landroid/media/AudioAttributes;->mFlags:I

    #@1f
    if-ne v2, v3, :cond_3

    #@21
    .line 720
    iget v2, p0, Landroid/media/AudioAttributes;->mSource:I

    #@23
    iget v3, v0, Landroid/media/AudioAttributes;->mSource:I

    #@25
    if-ne v2, v3, :cond_3

    #@27
    .line 721
    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@29
    iget v3, v0, Landroid/media/AudioAttributes;->mUsage:I

    #@2b
    if-ne v2, v3, :cond_3

    #@2d
    .line 723
    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    #@2f
    iget-object v2, v0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    .line 718
    :cond_3
    return v1
.end method

.method public getAllFlags()I
    .locals 1

    #@0
    .prologue
    .line 306
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@2
    and-int/lit16 v0, v0, 0x1ff

    #@4
    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 317
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@6
    return-object v0

    #@7
    .line 319
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@9
    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@b
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@e
    return-object v0
.end method

.method public getCapturePreset()I
    .locals 1

    #@0
    .prologue
    .line 286
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    #@2
    return v0
.end method

.method public getContentType()I
    .locals 1

    #@0
    .prologue
    .line 267
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    #@2
    return v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 295
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@2
    and-int/lit16 v0, v0, 0x111

    #@4
    return v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUsage()I
    .locals 1

    #@0
    .prologue
    .line 275
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 728
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, v0, v2

    #@27
    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    #@29
    const/4 v2, 0x4

    #@2a
    aput-object v1, v0, v2

    #@2c
    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 733
    new-instance v1, Ljava/lang/String;

    #@2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "AudioAttributes: usage="

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 734
    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@10
    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 735
    const-string/jumbo v2, " content="

    #@17
    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 735
    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    #@1d
    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 736
    const-string/jumbo v2, " flags=0x"

    #@24
    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 736
    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@2a
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 737
    const-string/jumbo v2, " tags="

    #@39
    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 737
    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    #@3f
    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 738
    const-string/jumbo v2, " bundle="

    #@46
    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 738
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@4c
    if-nez v0, :cond_0

    #@4e
    const-string/jumbo v0, "null"

    #@51
    .line 733
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@5c
    return-object v1

    #@5d
    .line 738
    :cond_0
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@5f
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    goto :goto_0
.end method

.method public usageToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 743
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@2
    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 647
    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    #@2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 648
    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 649
    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    #@c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 650
    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    #@11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 651
    and-int/lit8 v1, p2, 0x1

    #@16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 652
    and-int/lit8 v1, p2, 0x1

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 653
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    #@1f
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    #@22
    move-result v1

    #@23
    new-array v0, v1, [Ljava/lang/String;

    #@25
    .line 654
    .local v0, "tagsArray":[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    #@27
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2a
    .line 655
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2d
    .line 659
    .end local v0    # "tagsArray":[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@2f
    if-nez v1, :cond_2

    #@31
    .line 660
    const/16 v1, -0x7b9

    #@33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 646
    :goto_1
    return-void

    #@37
    .line 656
    :cond_1
    and-int/lit8 v1, p2, 0x1

    #@39
    const/4 v2, 0x1

    #@3a
    if-ne v1, v2, :cond_0

    #@3c
    .line 657
    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    #@3e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@41
    goto :goto_0

    #@42
    .line 662
    :cond_2
    const/16 v1, 0x7bc

    #@44
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    .line 663
    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    #@49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@4c
    goto :goto_1
.end method
