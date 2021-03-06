.class public final Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "HdmiRecordSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DigitalServiceSource"
.end annotation


# static fields
.field private static final DIGITAL_SERVICE_IDENTIFIED_BY_CHANNEL:I = 0x1

.field private static final DIGITAL_SERVICE_IDENTIFIED_BY_DIGITAL_ID:I = 0x0

.field static final EXTRA_DATA_SIZE:I = 0x7


# instance fields
.field private final mBroadcastSystem:I

.field private final mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

.field private final mIdentificationMethod:I


# direct methods
.method private constructor <init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;)V
    .locals 2
    .param p1, "identificatinoMethod"    # I
    .param p2, "broadcastSystem"    # I
    .param p3, "identification"    # Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    #@0
    .prologue
    .line 521
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x7

    #@2
    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    #@5
    .line 522
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentificationMethod:I

    #@7
    .line 523
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mBroadcastSystem:I

    #@9
    .line 524
    iput-object p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    #@b
    .line 520
    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;)V
    .locals 0
    .param p1, "identificatinoMethod"    # I
    .param p2, "broadcastSystem"    # I
    .param p3, "identification"    # Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;)V

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
    .line 529
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentificationMethod:I

    #@2
    shl-int/lit8 v0, v0, 0x7

    #@4
    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mBroadcastSystem:I

    #@6
    and-int/lit8 v1, v1, 0x7f

    #@8
    or-int/2addr v0, v1

    #@9
    int-to-byte v0, v0

    #@a
    aput-byte v0, p1, p2

    #@c
    .line 530
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    #@e
    add-int/lit8 v1, p2, 0x1

    #@10
    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;->toByteArray([BI)I

    #@13
    .line 531
    const/4 v0, 0x7

    #@14
    return v0
.end method
