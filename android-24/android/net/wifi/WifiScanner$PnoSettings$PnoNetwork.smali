.class public Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$PnoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PnoNetwork"
.end annotation


# static fields
.field public static final AUTH_CODE_EAPOL:B = 0x4t

.field public static final AUTH_CODE_OPEN:B = 0x1t

.field public static final AUTH_CODE_PSK:B = 0x2t

.field public static final FLAG_A_BAND:B = 0x2t

.field public static final FLAG_DIRECTED_SCAN:B = 0x1t

.field public static final FLAG_G_BAND:B = 0x4t

.field public static final FLAG_SAME_NETWORK:B = 0x10t

.field public static final FLAG_STRICT_MATCH:B = 0x8t


# instance fields
.field public authBitField:B

.field public flags:B

.field public networkId:I

.field public priority:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 536
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    #@6
    .line 537
    iput-byte v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    #@8
    .line 538
    iput-byte v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    #@a
    .line 535
    return-void
.end method
