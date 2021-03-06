.class public final Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalogueServiceSource"
.end annotation


# static fields
.field static final EXTRA_DATA_SIZE:I = 0x4


# instance fields
.field private final mBroadcastSystem:I

.field private final mBroadcastType:I

.field private final mFrequency:I


# direct methods
.method private constructor <init>(III)V
    .locals 2
    .param p1, "broadcastType"    # I
    .param p2, "frequency"    # I
    .param p3, "broadcastSystem"    # I

    #@0
    .prologue
    .line 631
    const/4 v0, 0x3

    #@1
    const/4 v1, 0x4

    #@2
    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    #@5
    .line 632
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastType:I

    #@7
    .line 633
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mFrequency:I

    #@9
    .line 634
    iput p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastSystem:I

    #@b
    .line 630
    return-void
.end method

.method synthetic constructor <init>(IIILandroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;)V
    .locals 0
    .param p1, "broadcastType"    # I
    .param p2, "frequency"    # I
    .param p3, "broadcastSystem"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;-><init>(III)V

    #@3
    return-void
.end method


# virtual methods
.method extraParamToByteArray([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "index"    # I

    #@0
    .prologue
    .line 640
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastType:I

    #@2
    int-to-byte v0, v0

    #@3
    aput-byte v0, p1, p2

    #@5
    .line 642
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mFrequency:I

    #@7
    int-to-short v0, v0

    #@8
    add-int/lit8 v1, p2, 0x1

    #@a
    invoke-static {v0, p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->-wrap0(S[BI)I

    #@d
    .line 644
    add-int/lit8 v0, p2, 0x3

    #@f
    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastSystem:I

    #@11
    int-to-byte v1, v1

    #@12
    aput-byte v1, p1, v0

    #@14
    .line 645
    const/4 v0, 0x4

    #@15
    return v0
.end method
