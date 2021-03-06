.class public Lcom/google/android/mms/pdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ADDRESS_FIELDS:[I

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DUMMY_THREAD_ID:J = 0x7fffffffffffffffL

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOGV:Z = false

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_COLUMN_CHARSET:I = 0x1

.field private static final PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final PART_COLUMN_FILENAME:I = 0x6

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_NAME:I = 0x7

.field private static final PART_COLUMN_TEXT:I = 0x8

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

.field private static final PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final PDU_COLUMN_DATE:I = 0x15

.field private static final PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final PDU_COLUMN_EXPIRY:I = 0x17

.field private static final PDU_COLUMN_ID:I = 0x0

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final PDU_COLUMN_PRIORITY:I = 0xf

.field private static final PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final PDU_COLUMN_STATUS:I = 0x14

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field public static final PROC_STATUS_COMPLETED:I = 0x3

.field public static final PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PduPersister"

.field public static final TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x9a

    #@2
    const/16 v7, 0x96

    #@4
    const/4 v6, 0x4

    #@5
    const/4 v5, 0x3

    #@6
    const/4 v1, 0x1

    #@7
    const-class v0, Lcom/google/android/mms/pdu/PduPersister;

    #@9
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    const/4 v0, 0x0

    #@10
    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduPersister;->-assertionsDisabled:Z

    #@12
    .line 100
    const/16 v0, 0x81

    #@14
    .line 101
    const/16 v2, 0x82

    #@16
    .line 102
    const/16 v3, 0x89

    #@18
    .line 103
    const/16 v4, 0x97

    #@1a
    .line 99
    filled-new-array {v0, v2, v3, v4}, [I

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    #@20
    .line 106
    const/16 v0, 0x1b

    #@22
    new-array v0, v0, [Ljava/lang/String;

    #@24
    .line 107
    const-string/jumbo v2, "_id"

    #@27
    const/4 v3, 0x0

    #@28
    aput-object v2, v0, v3

    #@2a
    .line 108
    const-string/jumbo v2, "msg_box"

    #@2d
    aput-object v2, v0, v1

    #@2f
    .line 109
    const-string/jumbo v2, "thread_id"

    #@32
    const/4 v3, 0x2

    #@33
    aput-object v2, v0, v3

    #@35
    .line 110
    const-string/jumbo v2, "retr_txt"

    #@38
    aput-object v2, v0, v5

    #@3a
    .line 111
    const-string/jumbo v2, "sub"

    #@3d
    aput-object v2, v0, v6

    #@3f
    .line 112
    const-string/jumbo v2, "ct_l"

    #@42
    const/4 v3, 0x5

    #@43
    aput-object v2, v0, v3

    #@45
    .line 113
    const-string/jumbo v2, "ct_t"

    #@48
    const/4 v3, 0x6

    #@49
    aput-object v2, v0, v3

    #@4b
    .line 114
    const-string/jumbo v2, "m_cls"

    #@4e
    const/4 v3, 0x7

    #@4f
    aput-object v2, v0, v3

    #@51
    .line 115
    const-string/jumbo v2, "m_id"

    #@54
    const/16 v3, 0x8

    #@56
    aput-object v2, v0, v3

    #@58
    .line 116
    const-string/jumbo v2, "resp_txt"

    #@5b
    const/16 v3, 0x9

    #@5d
    aput-object v2, v0, v3

    #@5f
    .line 117
    const-string/jumbo v2, "tr_id"

    #@62
    const/16 v3, 0xa

    #@64
    aput-object v2, v0, v3

    #@66
    .line 118
    const-string/jumbo v2, "ct_cls"

    #@69
    const/16 v3, 0xb

    #@6b
    aput-object v2, v0, v3

    #@6d
    .line 119
    const-string/jumbo v2, "d_rpt"

    #@70
    const/16 v3, 0xc

    #@72
    aput-object v2, v0, v3

    #@74
    .line 120
    const-string/jumbo v2, "m_type"

    #@77
    const/16 v3, 0xd

    #@79
    aput-object v2, v0, v3

    #@7b
    .line 121
    const-string/jumbo v2, "v"

    #@7e
    const/16 v3, 0xe

    #@80
    aput-object v2, v0, v3

    #@82
    .line 122
    const-string/jumbo v2, "pri"

    #@85
    const/16 v3, 0xf

    #@87
    aput-object v2, v0, v3

    #@89
    .line 123
    const-string/jumbo v2, "rr"

    #@8c
    const/16 v3, 0x10

    #@8e
    aput-object v2, v0, v3

    #@90
    .line 124
    const-string/jumbo v2, "read_status"

    #@93
    const/16 v3, 0x11

    #@95
    aput-object v2, v0, v3

    #@97
    .line 125
    const-string/jumbo v2, "rpt_a"

    #@9a
    const/16 v3, 0x12

    #@9c
    aput-object v2, v0, v3

    #@9e
    .line 126
    const-string/jumbo v2, "retr_st"

    #@a1
    const/16 v3, 0x13

    #@a3
    aput-object v2, v0, v3

    #@a5
    .line 127
    const-string/jumbo v2, "st"

    #@a8
    const/16 v3, 0x14

    #@aa
    aput-object v2, v0, v3

    #@ac
    .line 128
    const-string/jumbo v2, "date"

    #@af
    const/16 v3, 0x15

    #@b1
    aput-object v2, v0, v3

    #@b3
    .line 129
    const-string/jumbo v2, "d_tm"

    #@b6
    const/16 v3, 0x16

    #@b8
    aput-object v2, v0, v3

    #@ba
    .line 130
    const-string/jumbo v2, "exp"

    #@bd
    const/16 v3, 0x17

    #@bf
    aput-object v2, v0, v3

    #@c1
    .line 131
    const-string/jumbo v2, "m_size"

    #@c4
    const/16 v3, 0x18

    #@c6
    aput-object v2, v0, v3

    #@c8
    .line 132
    const-string/jumbo v2, "sub_cs"

    #@cb
    const/16 v3, 0x19

    #@cd
    aput-object v2, v0, v3

    #@cf
    .line 133
    const-string/jumbo v2, "retr_txt_cs"

    #@d2
    const/16 v3, 0x1a

    #@d4
    aput-object v2, v0, v3

    #@d6
    .line 106
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    #@d8
    .line 164
    const/16 v0, 0x9

    #@da
    new-array v0, v0, [Ljava/lang/String;

    #@dc
    .line 165
    const-string/jumbo v2, "_id"

    #@df
    const/4 v3, 0x0

    #@e0
    aput-object v2, v0, v3

    #@e2
    .line 166
    const-string/jumbo v2, "chset"

    #@e5
    aput-object v2, v0, v1

    #@e7
    .line 167
    const-string/jumbo v2, "cd"

    #@ea
    const/4 v3, 0x2

    #@eb
    aput-object v2, v0, v3

    #@ed
    .line 168
    const-string/jumbo v2, "cid"

    #@f0
    aput-object v2, v0, v5

    #@f2
    .line 169
    const-string/jumbo v2, "cl"

    #@f5
    aput-object v2, v0, v6

    #@f7
    .line 170
    const-string/jumbo v2, "ct"

    #@fa
    const/4 v3, 0x5

    #@fb
    aput-object v2, v0, v3

    #@fd
    .line 171
    const-string/jumbo v2, "fn"

    #@100
    const/4 v3, 0x6

    #@101
    aput-object v2, v0, v3

    #@103
    .line 172
    const-string/jumbo v2, "name"

    #@106
    const/4 v3, 0x7

    #@107
    aput-object v2, v0, v3

    #@109
    .line 173
    const-string/jumbo v2, "text"

    #@10c
    const/16 v3, 0x8

    #@10e
    aput-object v2, v0, v3

    #@110
    .line 164
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    #@112
    .line 200
    new-instance v0, Ljava/util/HashMap;

    #@114
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@117
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    #@119
    .line 201
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    #@11b
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    #@11d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@120
    move-result-object v1

    #@121
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@124
    .line 202
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    #@126
    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    #@128
    const/4 v2, 0x2

    #@129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12c
    move-result-object v2

    #@12d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@130
    .line 203
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    #@132
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    #@134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@137
    move-result-object v2

    #@138
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13b
    .line 204
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    #@13d
    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    #@13f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@142
    move-result-object v2

    #@143
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@146
    .line 206
    new-instance v0, Ljava/util/HashMap;

    #@148
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14b
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@14d
    .line 207
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@14f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@152
    move-result-object v1

    #@153
    const/16 v2, 0x19

    #@155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@158
    move-result-object v2

    #@159
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15c
    .line 208
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@15e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@161
    move-result-object v1

    #@162
    const/16 v2, 0x1a

    #@164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@167
    move-result-object v2

    #@168
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16b
    .line 210
    new-instance v0, Ljava/util/HashMap;

    #@16d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@170
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@172
    .line 211
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@174
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@177
    move-result-object v1

    #@178
    const-string/jumbo v2, "sub_cs"

    #@17b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17e
    .line 212
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@180
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@183
    move-result-object v1

    #@184
    const-string/jumbo v2, "retr_txt_cs"

    #@187
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18a
    .line 215
    new-instance v0, Ljava/util/HashMap;

    #@18c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@18f
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@191
    .line 216
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@193
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@196
    move-result-object v1

    #@197
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19a
    move-result-object v2

    #@19b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19e
    .line 217
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@1a0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a3
    move-result-object v1

    #@1a4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a7
    move-result-object v2

    #@1a8
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ab
    .line 219
    new-instance v0, Ljava/util/HashMap;

    #@1ad
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b0
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@1b2
    .line 220
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@1b4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b7
    move-result-object v1

    #@1b8
    const-string/jumbo v2, "retr_txt"

    #@1bb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1be
    .line 221
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@1c0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c3
    move-result-object v1

    #@1c4
    const-string/jumbo v2, "sub"

    #@1c7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ca
    .line 224
    new-instance v0, Ljava/util/HashMap;

    #@1cc
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1cf
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@1d1
    .line 225
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@1d3
    const/16 v1, 0x83

    #@1d5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d8
    move-result-object v1

    #@1d9
    const/4 v2, 0x5

    #@1da
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1dd
    move-result-object v2

    #@1de
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e1
    .line 226
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@1e3
    const/16 v1, 0x84

    #@1e5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e8
    move-result-object v1

    #@1e9
    const/4 v2, 0x6

    #@1ea
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ed
    move-result-object v2

    #@1ee
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f1
    .line 227
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@1f3
    const/16 v1, 0x8a

    #@1f5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f8
    move-result-object v1

    #@1f9
    const/4 v2, 0x7

    #@1fa
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1fd
    move-result-object v2

    #@1fe
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@201
    .line 228
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@203
    const/16 v1, 0x8b

    #@205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@208
    move-result-object v1

    #@209
    const/16 v2, 0x8

    #@20b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20e
    move-result-object v2

    #@20f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@212
    .line 229
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@214
    const/16 v1, 0x93

    #@216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@219
    move-result-object v1

    #@21a
    const/16 v2, 0x9

    #@21c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21f
    move-result-object v2

    #@220
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@223
    .line 230
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@225
    const/16 v1, 0x98

    #@227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22a
    move-result-object v1

    #@22b
    const/16 v2, 0xa

    #@22d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@230
    move-result-object v2

    #@231
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@234
    .line 232
    new-instance v0, Ljava/util/HashMap;

    #@236
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@239
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@23b
    .line 233
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@23d
    const/16 v1, 0x83

    #@23f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@242
    move-result-object v1

    #@243
    const-string/jumbo v2, "ct_l"

    #@246
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@249
    .line 234
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@24b
    const/16 v1, 0x84

    #@24d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@250
    move-result-object v1

    #@251
    const-string/jumbo v2, "ct_t"

    #@254
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@257
    .line 235
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@259
    const/16 v1, 0x8a

    #@25b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25e
    move-result-object v1

    #@25f
    const-string/jumbo v2, "m_cls"

    #@262
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@265
    .line 236
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@267
    const/16 v1, 0x8b

    #@269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26c
    move-result-object v1

    #@26d
    const-string/jumbo v2, "m_id"

    #@270
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@273
    .line 237
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@275
    const/16 v1, 0x93

    #@277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27a
    move-result-object v1

    #@27b
    const-string/jumbo v2, "resp_txt"

    #@27e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@281
    .line 238
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@283
    const/16 v1, 0x98

    #@285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@288
    move-result-object v1

    #@289
    const-string/jumbo v2, "tr_id"

    #@28c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28f
    .line 241
    new-instance v0, Ljava/util/HashMap;

    #@291
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@294
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@296
    .line 242
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@298
    const/16 v1, 0xba

    #@29a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29d
    move-result-object v1

    #@29e
    const/16 v2, 0xb

    #@2a0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a3
    move-result-object v2

    #@2a4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a7
    .line 243
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@2a9
    const/16 v1, 0x86

    #@2ab
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2ae
    move-result-object v1

    #@2af
    const/16 v2, 0xc

    #@2b1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b4
    move-result-object v2

    #@2b5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b8
    .line 244
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@2ba
    const/16 v1, 0x8c

    #@2bc
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2bf
    move-result-object v1

    #@2c0
    const/16 v2, 0xd

    #@2c2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c5
    move-result-object v2

    #@2c6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c9
    .line 245
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@2cb
    const/16 v1, 0x8d

    #@2cd
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d0
    move-result-object v1

    #@2d1
    const/16 v2, 0xe

    #@2d3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d6
    move-result-object v2

    #@2d7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2da
    .line 246
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@2dc
    const/16 v1, 0x8f

    #@2de
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e1
    move-result-object v1

    #@2e2
    const/16 v2, 0xf

    #@2e4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e7
    move-result-object v2

    #@2e8
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2eb
    .line 247
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@2ed
    const/16 v1, 0x90

    #@2ef
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f2
    move-result-object v1

    #@2f3
    const/16 v2, 0x10

    #@2f5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f8
    move-result-object v2

    #@2f9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fc
    .line 248
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@2fe
    const/16 v1, 0x9b

    #@300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@303
    move-result-object v1

    #@304
    const/16 v2, 0x11

    #@306
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@309
    move-result-object v2

    #@30a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30d
    .line 249
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@30f
    const/16 v1, 0x91

    #@311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@314
    move-result-object v1

    #@315
    const/16 v2, 0x12

    #@317
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31a
    move-result-object v2

    #@31b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31e
    .line 250
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@320
    const/16 v1, 0x99

    #@322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@325
    move-result-object v1

    #@326
    const/16 v2, 0x13

    #@328
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32b
    move-result-object v2

    #@32c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32f
    .line 251
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@331
    const/16 v1, 0x95

    #@333
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@336
    move-result-object v1

    #@337
    const/16 v2, 0x14

    #@339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33c
    move-result-object v2

    #@33d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@340
    .line 253
    new-instance v0, Ljava/util/HashMap;

    #@342
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@345
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@347
    .line 254
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@349
    const/16 v1, 0xba

    #@34b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34e
    move-result-object v1

    #@34f
    const-string/jumbo v2, "ct_cls"

    #@352
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@355
    .line 255
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@357
    const/16 v1, 0x86

    #@359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35c
    move-result-object v1

    #@35d
    const-string/jumbo v2, "d_rpt"

    #@360
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@363
    .line 256
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@365
    const/16 v1, 0x8c

    #@367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36a
    move-result-object v1

    #@36b
    const-string/jumbo v2, "m_type"

    #@36e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@371
    .line 257
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@373
    const/16 v1, 0x8d

    #@375
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@378
    move-result-object v1

    #@379
    const-string/jumbo v2, "v"

    #@37c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37f
    .line 258
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@381
    const/16 v1, 0x8f

    #@383
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@386
    move-result-object v1

    #@387
    const-string/jumbo v2, "pri"

    #@38a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38d
    .line 259
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@38f
    const/16 v1, 0x90

    #@391
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@394
    move-result-object v1

    #@395
    const-string/jumbo v2, "rr"

    #@398
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39b
    .line 260
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@39d
    const/16 v1, 0x9b

    #@39f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a2
    move-result-object v1

    #@3a3
    const-string/jumbo v2, "read_status"

    #@3a6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a9
    .line 261
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@3ab
    const/16 v1, 0x91

    #@3ad
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b0
    move-result-object v1

    #@3b1
    const-string/jumbo v2, "rpt_a"

    #@3b4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b7
    .line 262
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@3b9
    const/16 v1, 0x99

    #@3bb
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3be
    move-result-object v1

    #@3bf
    const-string/jumbo v2, "retr_st"

    #@3c2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c5
    .line 263
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@3c7
    const/16 v1, 0x95

    #@3c9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3cc
    move-result-object v1

    #@3cd
    const-string/jumbo v2, "st"

    #@3d0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d3
    .line 266
    new-instance v0, Ljava/util/HashMap;

    #@3d5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@3d8
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@3da
    .line 267
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@3dc
    const/16 v1, 0x85

    #@3de
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e1
    move-result-object v1

    #@3e2
    const/16 v2, 0x15

    #@3e4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e7
    move-result-object v2

    #@3e8
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3eb
    .line 268
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@3ed
    const/16 v1, 0x87

    #@3ef
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f2
    move-result-object v1

    #@3f3
    const/16 v2, 0x16

    #@3f5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f8
    move-result-object v2

    #@3f9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3fc
    .line 269
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@3fe
    const/16 v1, 0x88

    #@400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@403
    move-result-object v1

    #@404
    const/16 v2, 0x17

    #@406
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@409
    move-result-object v2

    #@40a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40d
    .line 270
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@40f
    const/16 v1, 0x8e

    #@411
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@414
    move-result-object v1

    #@415
    const/16 v2, 0x18

    #@417
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41a
    move-result-object v2

    #@41b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41e
    .line 272
    new-instance v0, Ljava/util/HashMap;

    #@420
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@423
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@425
    .line 273
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@427
    const/16 v1, 0x85

    #@429
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42c
    move-result-object v1

    #@42d
    const-string/jumbo v2, "date"

    #@430
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@433
    .line 274
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@435
    const/16 v1, 0x87

    #@437
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43a
    move-result-object v1

    #@43b
    const-string/jumbo v2, "d_tm"

    #@43e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@441
    .line 275
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@443
    const/16 v1, 0x88

    #@445
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@448
    move-result-object v1

    #@449
    const-string/jumbo v2, "exp"

    #@44c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44f
    .line 276
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@451
    const/16 v1, 0x8e

    #@453
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@456
    move-result-object v1

    #@457
    const-string/jumbo v2, "m_size"

    #@45a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45d
    .line 278
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    #@460
    move-result-object v0

    #@461
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@463
    .line 71
    return-void

    #@464
    :cond_0
    move v0, v1

    #@465
    goto/16 :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 287
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@5
    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@b
    .line 289
    new-instance v0, Landroid/drm/DrmManagerClient;

    #@d
    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #@10
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    #@12
    .line 291
    const-string/jumbo v0, "phone"

    #@15
    .line 290
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@1b
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@1d
    .line 286
    return-void
.end method

.method public static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 933
    const/4 v8, 0x0

    #@2
    .line 934
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@4
    .line 935
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v10

    #@8
    .line 936
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    #@a
    const-string/jumbo v0, ""

    #@d
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 937
    const-string/jumbo v0, "file"

    #@16
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    .line 936
    if-eqz v0, :cond_2

    #@1c
    .line 938
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    .line 967
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    #@21
    .line 940
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "http"

    #@24
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 941
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    .local v8, "path":Ljava/lang/String;
    goto :goto_0

    #@2f
    .line 943
    .local v8, "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "content"

    #@32
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_7

    #@38
    .line 944
    const/4 v0, 0x1

    #@39
    new-array v2, v0, [Ljava/lang/String;

    #@3b
    const-string/jumbo v0, "_data"

    #@3e
    aput-object v0, v2, v1

    #@40
    .line 945
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    #@41
    .line 947
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@44
    move-result-object v0

    #@45
    const/4 v3, 0x0

    #@46
    .line 948
    const/4 v4, 0x0

    #@47
    const/4 v5, 0x0

    #@48
    move-object v1, p1

    #@49
    .line 947
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@4c
    move-result-object v6

    #@4d
    .line 949
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    #@4f
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@52
    move-result v0

    #@53
    if-nez v0, :cond_6

    #@55
    .line 950
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@57
    const-string/jumbo v1, "Given Uri could not be found in media store"

    #@5a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    .line 955
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    #@5f
    .line 956
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@61
    const-string/jumbo v1, "Given Uri is not formatted in a way so that it can be found in media store."

    #@64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    .line 958
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    #@69
    .line 959
    if-eqz v6, :cond_5

    #@6b
    .line 960
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@6e
    .line 958
    :cond_5
    throw v0

    #@6f
    .line 949
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_4

    #@75
    .line 953
    const-string/jumbo v0, "_data"

    #@78
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@7b
    move-result v9

    #@7c
    .line 954
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7f
    move-result-object v8

    #@80
    .line 959
    .local v8, "path":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@82
    .line 960
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@85
    goto :goto_0

    #@86
    .line 964
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    .local v8, "path":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@88
    const-string/jumbo v1, "Given Uri scheme is not supported"

    #@8b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v0
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    #@0
    .prologue
    .line 354
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 355
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 357
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1565
    :try_start_0
    const-string/jumbo v1, "iso-8859-1"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 1566
    :catch_0
    move-exception v0

    #@9
    .line 1568
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "PduPersister"

    #@c
    const-string/jumbo v2, "ISO_8859_1 must be supported!"

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 1569
    const/4 v1, 0x0

    #@13
    new-array v1, v1, [B

    #@15
    return-object v1
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    #@0
    .prologue
    .line 347
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 348
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 350
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method private static getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 2
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 701
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    goto :goto_0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 296
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 297
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    #@6
    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    #@9
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    #@b
    .line 303
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    #@d
    return-object v0

    #@e
    .line 298
    :cond_1
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    #@10
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {p0, v0}, Landroid/content/Context;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    .line 299
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    #@1d
    .line 300
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    #@1f
    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    #@22
    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    #@24
    goto :goto_0
.end method

.method private loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V
    .locals 15
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x0

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 486
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@6
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@8
    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "content://mms/"

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    move-wide/from16 v0, p1

    #@16
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, "/addr"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@28
    move-result-object v4

    #@29
    .line 488
    const/4 v5, 0x3

    #@2a
    new-array v5, v5, [Ljava/lang/String;

    #@2c
    const-string/jumbo v7, "address"

    #@2f
    aput-object v7, v5, v12

    #@31
    const-string/jumbo v7, "charset"

    #@34
    aput-object v7, v5, v8

    #@36
    const-string/jumbo v7, "type"

    #@39
    aput-object v7, v5, v13

    #@3b
    move-object v7, v6

    #@3c
    move-object v8, v6

    #@3d
    .line 486
    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@40
    move-result-object v11

    #@41
    .line 491
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    #@43
    .line 493
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_1

    #@49
    .line 494
    const/4 v2, 0x0

    #@4a
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4d
    move-result-object v9

    #@4e
    .line 495
    .local v9, "addr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@51
    move-result v2

    #@52
    if-nez v2, :cond_0

    #@54
    .line 496
    const/4 v2, 0x2

    #@55
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    #@58
    move-result v10

    #@59
    .line 497
    .local v10, "addrType":I
    sparse-switch v10, :sswitch_data_0

    #@5c
    .line 511
    const-string/jumbo v2, "PduPersister"

    #@5f
    new-instance v3, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v4, "Unknown address type: "

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@76
    goto :goto_0

    #@77
    .line 516
    .end local v9    # "addr":Ljava/lang/String;
    .end local v10    # "addrType":I
    :catchall_0
    move-exception v2

    #@78
    .line 517
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    #@7b
    .line 516
    throw v2

    #@7c
    .line 500
    .restart local v9    # "addr":Ljava/lang/String;
    .restart local v10    # "addrType":I
    :sswitch_0
    :try_start_1
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@7e
    const/4 v3, 0x1

    #@7f
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    #@82
    move-result v3

    #@83
    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    #@86
    move-result-object v4

    #@87
    invoke-direct {v2, v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    #@8a
    .line 499
    move-object/from16 v0, p3

    #@8c
    invoke-virtual {v0, v2, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@8f
    goto :goto_0

    #@90
    .line 507
    :sswitch_1
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@92
    const/4 v3, 0x1

    #@93
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    #@96
    move-result v3

    #@97
    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    #@9a
    move-result-object v4

    #@9b
    invoke-direct {v2, v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    #@9e
    .line 506
    move-object/from16 v0, p3

    #@a0
    invoke-virtual {v0, v2, v10}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a3
    goto :goto_0

    #@a4
    .line 517
    .end local v9    # "addr":Ljava/lang/String;
    .end local v10    # "addrType":I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    #@a7
    .line 485
    :cond_2
    return-void

    #@a8
    .line 497
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .locals 33
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@8
    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "content://mms/"

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    move-wide/from16 v0, p1

    #@16
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, "/part"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@28
    move-result-object v4

    #@29
    .line 363
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    #@2b
    const/4 v6, 0x0

    #@2c
    const/4 v7, 0x0

    #@2d
    const/4 v8, 0x0

    #@2e
    .line 361
    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@31
    move-result-object v12

    #@32
    .line 365
    .local v12, "c":Landroid/database/Cursor;
    const/16 v30, 0x0

    #@34
    .line 368
    .local v30, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v12, :cond_0

    #@36
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_2

    #@3c
    .line 372
    :cond_0
    const/4 v2, 0x0

    #@3d
    .line 477
    if-eqz v12, :cond_1

    #@3f
    .line 478
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@42
    .line 372
    :cond_1
    return-object v2

    #@43
    .line 375
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    #@46
    move-result v24

    #@47
    .line 376
    .local v24, "partCount":I
    const/16 v25, 0x0

    #@49
    .line 377
    .local v25, "partIdx":I
    move/from16 v0, v24

    #@4b
    new-array v0, v0, [Lcom/google/android/mms/pdu/PduPart;

    #@4d
    move-object/from16 v30, v0

    #@4f
    .local v30, "parts":[Lcom/google/android/mms/pdu/PduPart;
    move/from16 v28, v25

    #@51
    .line 378
    .end local v25    # "partIdx":I
    .local v28, "partIdx":I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_13

    #@57
    .line 379
    new-instance v23, Lcom/google/android/mms/pdu/PduPart;

    #@59
    invoke-direct/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    #@5c
    .line 381
    .local v23, "part":Lcom/google/android/mms/pdu/PduPart;
    const/4 v2, 0x1

    #@5d
    .line 380
    move-object/from16 v0, p0

    #@5f
    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    #@62
    move-result-object v13

    #@63
    .line 382
    .local v13, "charset":Ljava/lang/Integer;
    if-eqz v13, :cond_3

    #@65
    .line 383
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@68
    move-result v2

    #@69
    move-object/from16 v0, v23

    #@6b
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    #@6e
    .line 387
    :cond_3
    const/4 v2, 0x2

    #@6f
    .line 386
    move-object/from16 v0, p0

    #@71
    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    #@74
    move-result-object v14

    #@75
    .line 388
    .local v14, "contentDisposition":[B
    if-eqz v14, :cond_4

    #@77
    .line 389
    move-object/from16 v0, v23

    #@79
    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    #@7c
    .line 393
    :cond_4
    const/4 v2, 0x3

    #@7d
    .line 392
    move-object/from16 v0, p0

    #@7f
    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    #@82
    move-result-object v15

    #@83
    .line 394
    .local v15, "contentId":[B
    if-eqz v15, :cond_5

    #@85
    .line 395
    move-object/from16 v0, v23

    #@87
    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    #@8a
    .line 399
    :cond_5
    const/4 v2, 0x4

    #@8b
    .line 398
    move-object/from16 v0, p0

    #@8d
    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    #@90
    move-result-object v16

    #@91
    .line 400
    .local v16, "contentLocation":[B
    if-eqz v16, :cond_6

    #@93
    .line 401
    move-object/from16 v0, v23

    #@95
    move-object/from16 v1, v16

    #@97
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    #@9a
    .line 405
    :cond_6
    const/4 v2, 0x5

    #@9b
    .line 404
    move-object/from16 v0, p0

    #@9d
    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    #@a0
    move-result-object v17

    #@a1
    .line 406
    .local v17, "contentType":[B
    if-eqz v17, :cond_a

    #@a3
    .line 407
    move-object/from16 v0, v23

    #@a5
    move-object/from16 v1, v17

    #@a7
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    #@aa
    .line 413
    const/4 v2, 0x6

    #@ab
    .line 412
    move-object/from16 v0, p0

    #@ad
    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    #@b0
    move-result-object v19

    #@b1
    .line 414
    .local v19, "fileName":[B
    if-eqz v19, :cond_7

    #@b3
    .line 415
    move-object/from16 v0, v23

    #@b5
    move-object/from16 v1, v19

    #@b7
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    #@ba
    .line 419
    :cond_7
    const/4 v2, 0x7

    #@bb
    .line 418
    move-object/from16 v0, p0

    #@bd
    invoke-direct {v0, v12, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    #@c0
    move-result-object v22

    #@c1
    .line 420
    .local v22, "name":[B
    if-eqz v22, :cond_8

    #@c3
    .line 421
    move-object/from16 v0, v23

    #@c5
    move-object/from16 v1, v22

    #@c7
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    #@ca
    .line 425
    :cond_8
    const/4 v2, 0x0

    #@cb
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    #@ce
    move-result-wide v26

    #@cf
    .line 426
    .local v26, "partId":J
    new-instance v2, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v3, "content://mms/part/"

    #@d7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v2

    #@db
    move-wide/from16 v0, v26

    #@dd
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v2

    #@e1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v2

    #@e5
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@e8
    move-result-object v29

    #@e9
    .line 427
    .local v29, "partURI":Landroid/net/Uri;
    move-object/from16 v0, v23

    #@eb
    move-object/from16 v1, v29

    #@ed
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    #@f0
    .line 431
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@f3
    move-result-object v32

    #@f4
    .line 432
    .local v32, "type":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    #@f7
    move-result v2

    #@f8
    if-nez v2, :cond_9

    #@fa
    .line 433
    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    #@fd
    move-result v2

    #@fe
    if-eqz v2, :cond_c

    #@100
    .line 474
    :cond_9
    :goto_1
    add-int/lit8 v25, v28, 0x1

    #@102
    .end local v28    # "partIdx":I
    .restart local v25    # "partIdx":I
    aput-object v23, v30, v28

    #@104
    move/from16 v28, v25

    #@106
    .end local v25    # "partIdx":I
    .restart local v28    # "partIdx":I
    goto/16 :goto_0

    #@108
    .line 409
    .end local v19    # "fileName":[B
    .end local v22    # "name":[B
    .end local v26    # "partId":J
    .end local v29    # "partURI":Landroid/net/Uri;
    .end local v32    # "type":Ljava/lang/String;
    :cond_a
    new-instance v2, Lcom/google/android/mms/MmsException;

    #@10a
    const-string/jumbo v3, "Content-Type must be set."

    #@10d
    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@110
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@111
    .line 476
    .end local v13    # "charset":Ljava/lang/Integer;
    .end local v14    # "contentDisposition":[B
    .end local v15    # "contentId":[B
    .end local v16    # "contentLocation":[B
    .end local v17    # "contentType":[B
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v24    # "partCount":I
    .end local v28    # "partIdx":I
    .end local v30    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    :catchall_0
    move-exception v2

    #@112
    .line 477
    if-eqz v12, :cond_b

    #@114
    .line 478
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@117
    .line 476
    :cond_b
    throw v2

    #@118
    .line 434
    .restart local v13    # "charset":Ljava/lang/Integer;
    .restart local v14    # "contentDisposition":[B
    .restart local v15    # "contentId":[B
    .restart local v16    # "contentLocation":[B
    .restart local v17    # "contentType":[B
    .restart local v19    # "fileName":[B
    .restart local v22    # "name":[B
    .restart local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v24    # "partCount":I
    .restart local v26    # "partId":J
    .restart local v28    # "partIdx":I
    .restart local v29    # "partURI":Landroid/net/Uri;
    .restart local v30    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v32    # "type":Ljava/lang/String;
    :cond_c
    :try_start_2
    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    #@11b
    move-result v2

    #@11c
    if-nez v2, :cond_9

    #@11e
    .line 435
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    #@120
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@123
    .line 436
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    #@125
    .line 441
    .local v20, "is":Ljava/io/InputStream;
    const-string/jumbo v2, "text/plain"

    #@128
    move-object/from16 v0, v32

    #@12a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12d
    move-result v2

    #@12e
    if-nez v2, :cond_d

    #@130
    const-string/jumbo v2, "application/smil"

    #@133
    move-object/from16 v0, v32

    #@135
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@138
    move-result v2

    #@139
    if-nez v2, :cond_d

    #@13b
    .line 442
    const-string/jumbo v2, "text/html"

    #@13e
    move-object/from16 v0, v32

    #@140
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@143
    move-result v2

    #@144
    .line 441
    if-eqz v2, :cond_10

    #@146
    .line 443
    :cond_d
    const/16 v2, 0x8

    #@148
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@14b
    move-result-object v31

    #@14c
    .line 444
    .local v31, "text":Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@14e
    if-eqz v31, :cond_f

    #@150
    .end local v31    # "text":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v31

    #@152
    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    #@155
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    #@158
    move-result-object v10

    #@159
    .line 446
    .local v10, "blob":[B
    array-length v2, v10

    #@15a
    const/4 v3, 0x0

    #@15b
    invoke-virtual {v9, v10, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@15e
    .line 472
    .end local v10    # "blob":[B
    .end local v20    # "is":Ljava/io/InputStream;
    :cond_e
    :goto_3
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@161
    move-result-object v2

    #@162
    move-object/from16 v0, v23

    #@164
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    #@167
    goto :goto_1

    #@168
    .line 444
    .restart local v20    # "is":Ljava/io/InputStream;
    .restart local v31    # "text":Ljava/lang/String;
    :cond_f
    const-string/jumbo v31, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@16b
    goto :goto_2

    #@16c
    .line 450
    .end local v31    # "text":Ljava/lang/String;
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    #@16e
    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@170
    move-object/from16 v0, v29

    #@172
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@175
    move-result-object v20

    #@176
    .line 452
    .local v20, "is":Ljava/io/InputStream;
    const/16 v2, 0x100

    #@178
    new-array v11, v2, [B

    #@17a
    .line 453
    .local v11, "buffer":[B
    move-object/from16 v0, v20

    #@17c
    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    #@17f
    move-result v21

    #@180
    .line 454
    .local v21, "len":I
    :goto_4
    if-ltz v21, :cond_11

    #@182
    .line 455
    const/4 v2, 0x0

    #@183
    move/from16 v0, v21

    #@185
    invoke-virtual {v9, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@188
    .line 456
    move-object/from16 v0, v20

    #@18a
    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@18d
    move-result v21

    #@18e
    goto :goto_4

    #@18f
    .line 463
    :cond_11
    if-eqz v20, :cond_e

    #@191
    .line 465
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@194
    goto :goto_3

    #@195
    .line 466
    :catch_0
    move-exception v18

    #@196
    .line 467
    .local v18, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v2, "PduPersister"

    #@199
    const-string/jumbo v3, "Failed to close stream"

    #@19c
    move-object/from16 v0, v18

    #@19e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1a1
    goto :goto_3

    #@1a2
    .line 458
    .end local v11    # "buffer":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v21    # "len":I
    :catch_1
    move-exception v18

    #@1a3
    .line 459
    .restart local v18    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v2, "PduPersister"

    #@1a6
    const-string/jumbo v3, "Failed to load part data"

    #@1a9
    move-object/from16 v0, v18

    #@1ab
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1ae
    .line 460
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@1b1
    .line 461
    new-instance v2, Lcom/google/android/mms/MmsException;

    #@1b3
    move-object/from16 v0, v18

    #@1b5
    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    #@1b8
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1b9
    .line 462
    .end local v18    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    #@1ba
    .line 463
    if-eqz v20, :cond_12

    #@1bc
    .line 465
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1bf
    .line 462
    :cond_12
    :goto_5
    :try_start_8
    throw v2

    #@1c0
    .line 466
    :catch_2
    move-exception v18

    #@1c1
    .line 467
    .restart local v18    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "PduPersister"

    #@1c4
    const-string/jumbo v4, "Failed to close stream"

    #@1c7
    move-object/from16 v0, v18

    #@1c9
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@1cc
    goto :goto_5

    #@1cd
    .line 477
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "charset":Ljava/lang/Integer;
    .end local v14    # "contentDisposition":[B
    .end local v15    # "contentId":[B
    .end local v16    # "contentLocation":[B
    .end local v17    # "contentType":[B
    .end local v18    # "e":Ljava/io/IOException;
    .end local v19    # "fileName":[B
    .end local v22    # "name":[B
    .end local v23    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v26    # "partId":J
    .end local v29    # "partURI":Landroid/net/Uri;
    .end local v32    # "type":Ljava/lang/String;
    :cond_13
    if-eqz v12, :cond_14

    #@1cf
    .line 478
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@1d2
    .line 482
    :cond_14
    return-object v30
.end method

.method private loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V
    .locals 12
    .param p1, "addressType"    # I
    .param p4, "excludeMyNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/google/android/mms/pdu/EncodedStringValue;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1473
    .local p2, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v8

    #@4
    invoke-virtual {p3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@a
    .line 1474
    .local v0, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_0

    #@c
    .line 1475
    return-void

    #@d
    .line 1479
    :cond_0
    if-eqz p4, :cond_1

    #@f
    array-length v8, v0

    #@10
    const/4 v9, 0x1

    #@11
    if-ne v8, v9, :cond_1

    #@13
    .line 1480
    return-void

    #@14
    .line 1482
    :cond_1
    iget-object v8, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@16
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@19
    move-result-object v6

    #@1a
    .line 1483
    .local v6, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    new-instance v3, Ljava/util/HashSet;

    #@1c
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@1f
    .line 1484
    .local v3, "myPhoneNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p4, :cond_3

    #@21
    .line 1486
    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    #@24
    move-result-object v9

    #@25
    const/4 v8, 0x0

    #@26
    array-length v10, v9

    #@27
    :goto_0
    if-ge v8, v10, :cond_3

    #@29
    aget v5, v9, v8

    #@2b
    .line 1487
    .local v5, "subid":I
    iget-object v11, p0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2d
    invoke-virtual {v11, v5}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 1488
    .local v1, "myNumber":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@33
    .line 1489
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@36
    .line 1486
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@38
    goto :goto_0

    #@39
    .line 1494
    .end local v1    # "myNumber":Ljava/lang/String;
    .end local v5    # "subid":I
    :cond_3
    const/4 v8, 0x0

    #@3a
    array-length v9, v0

    #@3b
    :goto_1
    if-ge v8, v9, :cond_7

    #@3d
    aget-object v7, v0, v8

    #@3f
    .line 1495
    .local v7, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v7, :cond_5

    #@41
    .line 1496
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 1497
    .local v4, "number":Ljava/lang/String;
    if-eqz p4, :cond_6

    #@47
    .line 1498
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v2

    #@4b
    .local v2, "myNumber$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v10

    #@4f
    if-eqz v10, :cond_5

    #@51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Ljava/lang/String;

    #@57
    .line 1499
    .restart local v1    # "myNumber":Ljava/lang/String;
    invoke-static {v4, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@5a
    move-result v10

    #@5b
    if-nez v10, :cond_4

    #@5d
    .line 1500
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@60
    move-result v10

    #@61
    if-nez v10, :cond_4

    #@63
    .line 1502
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@66
    .line 1494
    .end local v1    # "myNumber":Ljava/lang/String;
    .end local v2    # "myNumber$iterator":Ljava/util/Iterator;
    .end local v4    # "number":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@68
    goto :goto_1

    #@69
    .line 1506
    .restart local v4    # "number":Ljava/lang/String;
    :cond_6
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@6c
    move-result v10

    #@6d
    if-nez v10, :cond_5

    #@6f
    .line 1507
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@72
    goto :goto_2

    #@73
    .line 1472
    .end local v4    # "number":Ljava/lang/String;
    .end local v7    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_7
    return-void
.end method

.method private persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 7
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 687
    new-instance v2, Landroid/content/ContentValues;

    #@2
    const/4 v3, 0x3

    #@3
    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    #@6
    .line 689
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v3, 0x0

    #@7
    array-length v4, p4

    #@8
    :goto_0
    if-ge v3, v4, :cond_0

    #@a
    aget-object v0, p4, v3

    #@c
    .line 690
    .local v0, "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    #@f
    .line 691
    const-string/jumbo v5, "address"

    #@12
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    #@15
    move-result-object v6

    #@16
    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 692
    const-string/jumbo v5, "charset"

    #@20
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    #@23
    move-result v6

    #@24
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2b
    .line 693
    const-string/jumbo v5, "type"

    #@2e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@35
    .line 695
    new-instance v5, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v6, "content://mms/"

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    const-string/jumbo v6, "/addr"

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@53
    move-result-object v1

    #@54
    .line 696
    .local v1, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@56
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@58
    invoke-static {v5, v6, v1, v2}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@5b
    .line 689
    add-int/lit8 v3, v3, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 686
    .end local v0    # "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 26
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    #@0
    .prologue
    .line 787
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/16 v21, 0x0

    #@2
    .line 788
    .local v21, "os":Ljava/io/OutputStream;
    const/16 v18, 0x0

    #@4
    .line 789
    .local v18, "is":Ljava/io/InputStream;
    const/4 v13, 0x0

    #@5
    .line 790
    .local v13, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    const/4 v12, 0x0

    #@6
    .line 791
    .local v12, "dataUri":Landroid/net/Uri;
    const/16 v24, 0x0

    #@8
    .line 794
    .local v24, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    #@b
    move-result-object v11

    #@c
    .line 795
    .local v11, "data":[B
    const-string/jumbo v2, "text/plain"

    #@f
    move-object/from16 v0, p3

    #@11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 796
    const-string/jumbo v2, "application/smil"

    #@1a
    move-object/from16 v0, p3

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    .line 795
    if-nez v2, :cond_0

    #@22
    .line 797
    const-string/jumbo v2, "text/html"

    #@25
    move-object/from16 v0, p3

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    .line 795
    if-eqz v2, :cond_5

    #@2d
    .line 798
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    #@2f
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    #@32
    .line 799
    .local v10, "cv":Landroid/content/ContentValues;
    if-nez v11, :cond_1

    #@34
    .line 800
    new-instance v2, Ljava/lang/String;

    #@36
    const-string/jumbo v3, ""

    #@39
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@3c
    const-string/jumbo v3, "utf-8"

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@42
    move-result-object v11

    #@43
    .line 802
    :cond_1
    const-string/jumbo v2, "text"

    #@46
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@48
    invoke-direct {v3, v11}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    #@4b
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@52
    .line 803
    move-object/from16 v0, p0

    #@54
    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@56
    const/4 v3, 0x0

    #@57
    const/4 v4, 0x0

    #@58
    move-object/from16 v0, p2

    #@5a
    invoke-virtual {v2, v0, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@5d
    move-result v2

    #@5e
    const/4 v3, 0x1

    #@5f
    if-eq v2, v3, :cond_11

    #@61
    .line 804
    new-instance v2, Lcom/google/android/mms/MmsException;

    #@63
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v4, "unable to update "

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7f
    .line 888
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "data":[B
    .end local v12    # "dataUri":Landroid/net/Uri;
    .end local v13    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v21    # "os":Ljava/io/OutputStream;
    .end local v24    # "path":Ljava/lang/String;
    :catch_0
    move-exception v14

    #@80
    .line 889
    .local v14, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string/jumbo v2, "PduPersister"

    #@83
    const-string/jumbo v3, "Failed to open Input/Output stream."

    #@86
    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@89
    .line 890
    new-instance v2, Lcom/google/android/mms/MmsException;

    #@8b
    invoke-direct {v2, v14}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    #@8e
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8f
    .line 894
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    #@90
    move-object/from16 v25, v2

    #@92
    .line 895
    if-eqz v21, :cond_2

    #@94
    .line 897
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    #@97
    .line 902
    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    #@99
    .line 904
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    #@9c
    .line 909
    :cond_3
    :goto_1
    if-eqz v13, :cond_4

    #@9e
    .line 910
    move-object/from16 v0, v24

    #@a0
    invoke-virtual {v13, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    #@a3
    .line 914
    new-instance v17, Ljava/io/File;

    #@a5
    move-object/from16 v0, v17

    #@a7
    move-object/from16 v1, v24

    #@a9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@ac
    .line 915
    .local v17, "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    #@ae
    const/4 v2, 0x0

    #@af
    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    #@b2
    .line 916
    .local v5, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    #@b4
    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@b6
    move-object/from16 v0, p0

    #@b8
    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@ba
    .line 917
    new-instance v4, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v6, "content://mms/resetFilePerm/"

    #@c2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    #@c9
    move-result-object v6

    #@ca
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v4

    #@d2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@d5
    move-result-object v4

    #@d6
    .line 918
    const/4 v6, 0x0

    #@d7
    const/4 v7, 0x0

    #@d8
    .line 916
    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@db
    .line 894
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v17    # "f":Ljava/io/File;
    :cond_4
    throw v25

    #@dc
    .line 807
    .restart local v11    # "data":[B
    .restart local v12    # "dataUri":Landroid/net/Uri;
    .restart local v13    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v21    # "os":Ljava/io/OutputStream;
    .restart local v24    # "path":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-static/range {p3 .. p3}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@df
    move-result v19

    #@e0
    .line 808
    .local v19, "isDrm":Z
    if-eqz v19, :cond_7

    #@e2
    .line 809
    if-eqz p2, :cond_6

    #@e4
    .line 811
    :try_start_5
    move-object/from16 v0, p0

    #@e6
    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@e8
    move-object/from16 v0, p2

    #@ea
    invoke-static {v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    #@ed
    move-result-object v24

    #@ee
    .line 815
    .local v24, "path":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    #@f0
    move-object/from16 v0, v17

    #@f2
    move-object/from16 v1, v24

    #@f4
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f7
    .line 816
    .restart local v17    # "f":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@fa
    move-result-wide v22

    #@fb
    .line 820
    .local v22, "len":J
    const-wide/16 v2, 0x0

    #@fd
    cmp-long v2, v22, v2

    #@ff
    if-lez v2, :cond_6

    #@101
    .line 823
    return-void

    #@102
    .line 825
    .end local v17    # "f":Ljava/io/File;
    .end local v22    # "len":J
    .end local v24    # "path":Ljava/lang/String;
    :catch_1
    move-exception v16

    #@103
    .line 826
    .local v16, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v2, "PduPersister"

    #@106
    new-instance v3, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v4, "Can\'t get file info for: "

    #@10e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v3

    #@112
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    #@115
    move-result-object v4

    #@116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v3

    #@11a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v3

    #@11e
    move-object/from16 v0, v16

    #@120
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@123
    .line 830
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    #@125
    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@127
    move-object/from16 v0, p3

    #@129
    invoke-static {v2, v0}, Lcom/google/android/mms/util/DrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;

    #@12c
    move-result-object v13

    #@12d
    .line 831
    .local v13, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    if-nez v13, :cond_7

    #@12f
    .line 832
    new-instance v2, Lcom/google/android/mms/MmsException;

    #@131
    new-instance v3, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v4, "Mimetype "

    #@139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v3

    #@13d
    move-object/from16 v0, p3

    #@13f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v3

    #@143
    .line 833
    const-string/jumbo v4, " can not be converted."

    #@146
    .line 832
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v3

    #@14a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v3

    #@14e
    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@151
    throw v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@152
    .line 891
    .end local v11    # "data":[B
    .end local v12    # "dataUri":Landroid/net/Uri;
    .end local v13    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v19    # "isDrm":Z
    .end local v21    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v15

    #@153
    .line 892
    .local v15, "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v2, "PduPersister"

    #@156
    const-string/jumbo v3, "Failed to read/write data."

    #@159
    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15c
    .line 893
    new-instance v2, Lcom/google/android/mms/MmsException;

    #@15e
    invoke-direct {v2, v15}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    #@161
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@162
    .line 838
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v11    # "data":[B
    .restart local v12    # "dataUri":Landroid/net/Uri;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "isDrm":Z
    .restart local v21    # "os":Ljava/io/OutputStream;
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    #@164
    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@166
    move-object/from16 v0, p2

    #@168
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    #@16b
    move-result-object v21

    #@16c
    .line 839
    .local v21, "os":Ljava/io/OutputStream;
    if-nez v11, :cond_10

    #@16e
    .line 840
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    #@171
    move-result-object v12

    #@172
    .line 841
    .local v12, "dataUri":Landroid/net/Uri;
    if-eqz v12, :cond_8

    #@174
    move-object/from16 v0, p2

    #@176
    if-ne v12, v0, :cond_b

    #@178
    .line 842
    :cond_8
    const-string/jumbo v2, "PduPersister"

    #@17b
    const-string/jumbo v3, "Can\'t find data for this part."

    #@17e
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@181
    .line 895
    if-eqz v21, :cond_9

    #@183
    .line 897
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    #@186
    .line 909
    :cond_9
    :goto_2
    if-eqz v13, :cond_a

    #@188
    .line 910
    move-object/from16 v0, v24

    #@18a
    invoke-virtual {v13, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    #@18d
    .line 914
    new-instance v17, Ljava/io/File;

    #@18f
    move-object/from16 v0, v17

    #@191
    move-object/from16 v1, v24

    #@193
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@196
    .line 915
    .restart local v17    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    #@198
    const/4 v2, 0x0

    #@199
    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    #@19c
    .line 916
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    #@19e
    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@1a4
    .line 917
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a9
    const-string/jumbo v6, "content://mms/resetFilePerm/"

    #@1ac
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v4

    #@1b0
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1b3
    move-result-object v6

    #@1b4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v4

    #@1b8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bb
    move-result-object v4

    #@1bc
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1bf
    move-result-object v4

    #@1c0
    .line 918
    const/4 v6, 0x0

    #@1c1
    const/4 v7, 0x0

    #@1c2
    .line 916
    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@1c5
    .line 843
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v17    # "f":Ljava/io/File;
    :cond_a
    return-void

    #@1c6
    .line 898
    :catch_3
    move-exception v15

    #@1c7
    .line 899
    .restart local v15    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    #@1ca
    new-instance v3, Ljava/lang/StringBuilder;

    #@1cc
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1cf
    const-string/jumbo v4, "IOException while closing: "

    #@1d2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v3

    #@1d6
    move-object/from16 v0, v21

    #@1d8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v3

    #@1dc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1df
    move-result-object v3

    #@1e0
    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e3
    goto :goto_2

    #@1e4
    .line 847
    .end local v15    # "e":Ljava/io/IOException;
    :cond_b
    if-eqz p4, :cond_c

    #@1e6
    :try_start_a
    move-object/from16 v0, p4

    #@1e8
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1eb
    move-result v2

    #@1ec
    if-eqz v2, :cond_c

    #@1ee
    .line 848
    move-object/from16 v0, p4

    #@1f0
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f3
    move-result-object v2

    #@1f4
    move-object v0, v2

    #@1f5
    check-cast v0, Ljava/io/InputStream;

    #@1f7
    move-object/from16 v18, v0

    #@1f9
    .line 850
    .end local v18    # "is":Ljava/io/InputStream;
    :cond_c
    if-nez v18, :cond_d

    #@1fb
    .line 851
    move-object/from16 v0, p0

    #@1fd
    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@1ff
    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@202
    move-result-object v18

    #@203
    .line 858
    :cond_d
    const/16 v2, 0x2000

    #@205
    new-array v8, v2, [B

    #@207
    .line 859
    .local v8, "buffer":[B
    const/16 v20, 0x0

    #@209
    .local v20, "len":I
    :goto_3
    move-object/from16 v0, v18

    #@20b
    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    #@20e
    move-result v20

    #@20f
    const/4 v2, -0x1

    #@210
    move/from16 v0, v20

    #@212
    if-eq v0, v2, :cond_11

    #@214
    .line 860
    if-nez v19, :cond_e

    #@216
    .line 861
    const/4 v2, 0x0

    #@217
    move-object/from16 v0, v21

    #@219
    move/from16 v1, v20

    #@21b
    invoke-virtual {v0, v8, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    #@21e
    goto :goto_3

    #@21f
    .line 863
    :cond_e
    move/from16 v0, v20

    #@221
    invoke-virtual {v13, v8, v0}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    #@224
    move-result-object v9

    #@225
    .line 864
    .local v9, "convertedData":[B
    if-eqz v9, :cond_f

    #@227
    .line 865
    array-length v2, v9

    #@228
    const/4 v3, 0x0

    #@229
    move-object/from16 v0, v21

    #@22b
    invoke-virtual {v0, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@22e
    goto :goto_3

    #@22f
    .line 867
    :cond_f
    new-instance v2, Lcom/google/android/mms/MmsException;

    #@231
    const-string/jumbo v3, "Error converting drm data."

    #@234
    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@237
    throw v2

    #@238
    .line 875
    .end local v8    # "buffer":[B
    .end local v9    # "convertedData":[B
    .end local v20    # "len":I
    .local v12, "dataUri":Landroid/net/Uri;
    .restart local v18    # "is":Ljava/io/InputStream;
    :cond_10
    if-nez v19, :cond_15

    #@23a
    .line 876
    move-object/from16 v0, v21

    #@23c
    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@23f
    .line 895
    .end local v12    # "dataUri":Landroid/net/Uri;
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v19    # "isDrm":Z
    .end local v21    # "os":Ljava/io/OutputStream;
    :cond_11
    :goto_4
    if-eqz v21, :cond_12

    #@241
    .line 897
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    #@244
    .line 902
    :cond_12
    :goto_5
    if-eqz v18, :cond_13

    #@246
    .line 904
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    #@249
    .line 909
    :cond_13
    :goto_6
    if-eqz v13, :cond_14

    #@24b
    .line 910
    move-object/from16 v0, v24

    #@24d
    invoke-virtual {v13, v0}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    #@250
    .line 914
    new-instance v17, Ljava/io/File;

    #@252
    move-object/from16 v0, v17

    #@254
    move-object/from16 v1, v24

    #@256
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@259
    .line 915
    .restart local v17    # "f":Ljava/io/File;
    new-instance v5, Landroid/content/ContentValues;

    #@25b
    const/4 v2, 0x0

    #@25c
    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    #@25f
    .line 916
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    #@261
    iget-object v2, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@263
    move-object/from16 v0, p0

    #@265
    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@267
    .line 917
    new-instance v4, Ljava/lang/StringBuilder;

    #@269
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26c
    const-string/jumbo v6, "content://mms/resetFilePerm/"

    #@26f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@272
    move-result-object v4

    #@273
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    #@276
    move-result-object v6

    #@277
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    move-result-object v4

    #@27b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27e
    move-result-object v4

    #@27f
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@282
    move-result-object v4

    #@283
    .line 918
    const/4 v6, 0x0

    #@284
    const/4 v7, 0x0

    #@285
    .line 916
    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@288
    .line 786
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v17    # "f":Ljava/io/File;
    :cond_14
    return-void

    #@289
    .line 878
    .restart local v12    # "dataUri":Landroid/net/Uri;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "isDrm":Z
    .restart local v21    # "os":Ljava/io/OutputStream;
    :cond_15
    move-object/from16 v12, p2

    #@28b
    .line 879
    .local v12, "dataUri":Landroid/net/Uri;
    :try_start_d
    array-length v2, v11

    #@28c
    invoke-virtual {v13, v11, v2}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    #@28f
    move-result-object v9

    #@290
    .line 880
    .restart local v9    # "convertedData":[B
    if-eqz v9, :cond_16

    #@292
    .line 881
    array-length v2, v9

    #@293
    const/4 v3, 0x0

    #@294
    move-object/from16 v0, v21

    #@296
    invoke-virtual {v0, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@299
    goto :goto_4

    #@29a
    .line 883
    :cond_16
    new-instance v2, Lcom/google/android/mms/MmsException;

    #@29c
    const-string/jumbo v3, "Error converting drm data."

    #@29f
    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@2a2
    throw v2
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@2a3
    .line 898
    .end local v9    # "convertedData":[B
    .end local v12    # "dataUri":Landroid/net/Uri;
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v19    # "isDrm":Z
    .end local v21    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v15

    #@2a4
    .line 899
    .restart local v15    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    #@2a7
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2ac
    const-string/jumbo v4, "IOException while closing: "

    #@2af
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    move-result-object v3

    #@2b3
    move-object/from16 v0, v21

    #@2b5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v3

    #@2b9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bc
    move-result-object v3

    #@2bd
    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c0
    goto :goto_5

    #@2c1
    .line 905
    .end local v15    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v15

    #@2c2
    .line 906
    .restart local v15    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    #@2c5
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2ca
    const-string/jumbo v4, "IOException while closing: "

    #@2cd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d0
    move-result-object v3

    #@2d1
    move-object/from16 v0, v18

    #@2d3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v3

    #@2d7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2da
    move-result-object v3

    #@2db
    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2de
    goto/16 :goto_6

    #@2e0
    .line 898
    .end local v11    # "data":[B
    .end local v15    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v15

    #@2e1
    .line 899
    .restart local v15    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    #@2e4
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e9
    const-string/jumbo v4, "IOException while closing: "

    #@2ec
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ef
    move-result-object v3

    #@2f0
    move-object/from16 v0, v21

    #@2f2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v3

    #@2f6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f9
    move-result-object v3

    #@2fa
    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2fd
    goto/16 :goto_0

    #@2ff
    .line 905
    .end local v15    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v15

    #@300
    .line 906
    .restart local v15    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PduPersister"

    #@303
    new-instance v3, Ljava/lang/StringBuilder;

    #@305
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@308
    const-string/jumbo v4, "IOException while closing: "

    #@30b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30e
    move-result-object v3

    #@30f
    move-object/from16 v0, v18

    #@311
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@314
    move-result-object v3

    #@315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@318
    move-result-object v3

    #@319
    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31c
    goto/16 :goto_1
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    #@0
    .prologue
    .line 309
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 310
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@9
    move-result v4

    #@a
    if-lez v4, :cond_0

    #@c
    .line 311
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@e
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Ljava/lang/Integer;

    #@18
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v1

    #@1c
    .line 312
    .local v1, "charsetColumnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    #@1f
    move-result v0

    #@20
    .line 313
    .local v0, "charset":I
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@22
    .line 314
    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    #@25
    move-result-object v4

    #@26
    .line 313
    invoke-direct {v3, v0, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    #@29
    .line 315
    .local v3, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@2c
    .line 308
    .end local v0    # "charset":I
    .end local v1    # "charsetColumnIndex":I
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    #@0
    .prologue
    .line 340
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 341
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    #@9
    move-result-wide v0

    #@a
    .line 342
    .local v0, "l":J
    invoke-virtual {p3, v0, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    #@d
    .line 339
    .end local v0    # "l":J
    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 332
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    #@9
    move-result v0

    #@a
    .line 333
    .local v0, "b":I
    invoke-virtual {p3, v0, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@d
    .line 330
    .end local v0    # "b":I
    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    #@0
    .prologue
    .line 322
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 323
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 324
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p3, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@d
    .line 321
    :cond_0
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 1552
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@2
    const-string/jumbo v2, "iso-8859-1"

    #@5
    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    return-object v1

    #@9
    .line 1553
    :catch_0
    move-exception v0

    #@a
    .line 1555
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "PduPersister"

    #@d
    const-string/jumbo v2, "ISO_8859_1 must be supported!"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 1556
    const-string/jumbo v1, ""

    #@16
    return-object v1
.end method

.method private updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 5
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@2
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    .line 974
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "content://mms/"

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "/addr"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@22
    move-result-object v2

    #@23
    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "type="

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    const/4 v4, 0x0

    #@38
    .line 973
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@3b
    .line 977
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    #@3e
    .line 971
    return-void
.end method

.method private updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    #@0
    .prologue
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    const/4 v4, 0x0

    #@1
    .line 1094
    new-instance v3, Landroid/content/ContentValues;

    #@3
    const/4 v0, 0x7

    #@4
    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    #@7
    .line 1096
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    #@a
    move-result v6

    #@b
    .line 1097
    .local v6, "charset":I
    if-eqz v6, :cond_0

    #@d
    .line 1098
    const-string/jumbo v0, "chset"

    #@10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@17
    .line 1101
    :cond_0
    const/4 v7, 0x0

    #@18
    .line 1102
    .local v7, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_8

    #@1e
    .line 1103
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    .line 1104
    .local v7, "contentType":Ljava/lang/String;
    const-string/jumbo v0, "ct"

    #@29
    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 1109
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    #@2f
    move-result-object v0

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 1110
    new-instance v8, Ljava/lang/String;

    #@34
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    #@37
    move-result-object v0

    #@38
    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    #@3b
    .line 1111
    .local v8, "fileName":Ljava/lang/String;
    const-string/jumbo v0, "fn"

    #@3e
    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 1114
    .end local v8    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    #@44
    move-result-object v0

    #@45
    if-eqz v0, :cond_2

    #@47
    .line 1115
    new-instance v9, Ljava/lang/String;

    #@49
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    #@4c
    move-result-object v0

    #@4d
    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    #@50
    .line 1116
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v0, "name"

    #@53
    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 1119
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    #@57
    .line 1120
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    #@5a
    move-result-object v0

    #@5b
    if-eqz v0, :cond_3

    #@5d
    .line 1121
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    #@60
    move-result-object v0

    #@61
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@64
    move-result-object v10

    #@65
    .line 1122
    const-string/jumbo v1, "cd"

    #@68
    move-object v0, v10

    #@69
    check-cast v0, Ljava/lang/String;

    #@6b
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@6e
    .line 1125
    .end local v10    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    #@71
    move-result-object v0

    #@72
    if-eqz v0, :cond_4

    #@74
    .line 1126
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    #@77
    move-result-object v0

    #@78
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@7b
    move-result-object v10

    #@7c
    .line 1127
    .restart local v10    # "value":Ljava/lang/Object;
    const-string/jumbo v1, "cid"

    #@7f
    move-object v0, v10

    #@80
    check-cast v0, Ljava/lang/String;

    #@82
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@85
    .line 1130
    .end local v10    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    #@88
    move-result-object v0

    #@89
    if-eqz v0, :cond_5

    #@8b
    .line 1131
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    #@8e
    move-result-object v0

    #@8f
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@92
    move-result-object v10

    #@93
    .line 1132
    .restart local v10    # "value":Ljava/lang/Object;
    const-string/jumbo v1, "cl"

    #@96
    move-object v0, v10

    #@97
    check-cast v0, Ljava/lang/String;

    #@99
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9c
    .line 1135
    .end local v10    # "value":Ljava/lang/Object;
    :cond_5
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@9e
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@a0
    move-object v2, p1

    #@a1
    move-object v5, v4

    #@a2
    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@a5
    .line 1140
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    #@a8
    move-result-object v0

    #@a9
    if-nez v0, :cond_6

    #@ab
    .line 1141
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    #@ae
    move-result-object v0

    #@af
    if-eq p1, v0, :cond_7

    #@b1
    .line 1142
    :cond_6
    invoke-direct {p0, p2, p1, v7, p3}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    #@b4
    .line 1093
    :cond_7
    return-void

    #@b5
    .line 1106
    .local v7, "contentType":Ljava/lang/String;
    :cond_8
    new-instance v0, Lcom/google/android/mms/MmsException;

    #@b7
    const-string/jumbo v1, "MIME type of the part must be set."

    #@ba
    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v0
.end method


# virtual methods
.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "dueTime"    # J

    #@0
    .prologue
    .line 1585
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@5
    move-result-object v7

    #@6
    .line 1586
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v0, "protocol"

    #@9
    const-string/jumbo v1, "mms"

    #@c
    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    .line 1588
    const-string/jumbo v4, "err_type < ? AND due_time <= ?"

    #@12
    .line 1591
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    #@13
    new-array v5, v0, [Ljava/lang/String;

    #@15
    .line 1592
    const/16 v0, 0xa

    #@17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const/4 v1, 0x0

    #@1c
    aput-object v0, v5, v1

    #@1e
    .line 1593
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    const/4 v1, 0x1

    #@23
    aput-object v0, v5, v1

    #@25
    .line 1596
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@27
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@29
    .line 1597
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@2c
    move-result-object v2

    #@2d
    .line 1598
    const-string/jumbo v6, "due_time"

    #@30
    .line 1597
    const/4 v3, 0x0

    #@31
    .line 1596
    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 30
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    #@0
    .prologue
    .line 530
    const/16 v26, 0x0

    #@2
    .line 531
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    const/4 v13, 0x0

    #@3
    .line 532
    .local v13, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    const/16 v20, 0x0

    #@5
    .line 533
    .local v20, "msgBox":I
    const-wide/16 v28, -0x1

    #@7
    .line 535
    .local v28, "threadId":J
    :try_start_0
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@9
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 536
    :try_start_1
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 541
    :try_start_2
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@16
    invoke-virtual {v4}, Lcom/google/android/mms/util/PduCache;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .line 545
    :goto_0
    :try_start_3
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@1b
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    move-object v0, v4

    #@22
    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    #@24
    move-object v13, v0

    #@25
    .line 546
    .local v13, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v13, :cond_0

    #@27
    .line 547
    invoke-virtual {v13}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2a
    move-result-object v4

    #@2b
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2c
    .line 671
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@2e
    monitor-enter v5

    #@2f
    .line 678
    :try_start_5
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@31
    const/4 v7, 0x0

    #@32
    move-object/from16 v0, p1

    #@34
    invoke-virtual {v6, v0, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    #@37
    .line 679
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@39
    invoke-virtual {v6}, Lcom/google/android/mms/util/PduCache;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@3c
    monitor-exit v5

    #@3d
    .line 547
    return-object v4

    #@3e
    .line 542
    .local v13, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :catch_0
    move-exception v15

    #@3f
    .line 543
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v4, "PduPersister"

    #@42
    const-string/jumbo v6, "load: "

    #@45
    invoke-static {v4, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 535
    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    #@4a
    :goto_1
    :try_start_7
    monitor-exit v5

    #@4b
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@4c
    .line 670
    :catchall_1
    move-exception v4

    #@4d
    .line 671
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_2
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@4f
    monitor-enter v5

    #@50
    .line 678
    :try_start_8
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@52
    const/4 v7, 0x0

    #@53
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v6, v0, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    #@58
    .line 679
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@5a
    invoke-virtual {v6}, Lcom/google/android/mms/util/PduCache;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    #@5d
    monitor-exit v5

    #@5e
    .line 670
    throw v4

    #@5f
    .line 671
    .local v13, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catchall_2
    move-exception v4

    #@60
    monitor-exit v5

    #@61
    throw v4

    #@62
    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_0
    move-object v14, v13

    #@63
    .line 552
    .local v14, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_9
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@65
    const/4 v6, 0x1

    #@66
    move-object/from16 v0, p1

    #@68
    invoke-virtual {v4, v0, v6}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    #@6b
    :try_start_a
    monitor-exit v5

    #@6c
    .line 555
    move-object/from16 v0, p0

    #@6e
    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@70
    move-object/from16 v0, p0

    #@72
    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@74
    .line 556
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    #@76
    const/4 v8, 0x0

    #@77
    const/4 v9, 0x0

    #@78
    const/4 v10, 0x0

    #@79
    move-object/from16 v6, p1

    #@7b
    .line 555
    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@7e
    move-result-object v12

    #@7f
    .line 557
    .local v12, "c":Landroid/database/Cursor;
    new-instance v18, Lcom/google/android/mms/pdu/PduHeaders;

    #@81
    invoke-direct/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    #@84
    .line 559
    .local v18, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    #@87
    move-result-wide v22

    #@88
    .line 562
    .local v22, "msgId":J
    if-eqz v12, :cond_1

    #@8a
    :try_start_b
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    #@8d
    move-result v4

    #@8e
    const/4 v5, 0x1

    #@8f
    if-eq v4, v5, :cond_3

    #@91
    .line 563
    :cond_1
    new-instance v4, Lcom/google/android/mms/MmsException;

    #@93
    new-instance v5, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v6, "Bad uri: "

    #@9b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v5

    #@9f
    move-object/from16 v0, p1

    #@a1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v5

    #@a9
    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@ad
    .line 592
    :catchall_3
    move-exception v4

    #@ae
    .line 593
    if-eqz v12, :cond_2

    #@b0
    .line 594
    :try_start_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@b3
    .line 592
    :cond_2
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@b4
    .line 670
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v18    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v22    # "msgId":J
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catchall_4
    move-exception v4

    #@b5
    move-object v13, v14

    #@b6
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    goto :goto_2

    #@b7
    .line 562
    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v18    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v22    # "msgId":J
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_3
    :try_start_d
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    #@ba
    move-result v4

    #@bb
    if-eqz v4, :cond_1

    #@bd
    .line 566
    const/4 v4, 0x1

    #@be
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    #@c1
    move-result v20

    #@c2
    .line 567
    const/4 v4, 0x2

    #@c3
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    #@c6
    move-result-wide v28

    #@c7
    .line 569
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@c9
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@cc
    move-result-object v27

    #@cd
    .line 570
    .local v27, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d0
    move-result-object v17

    #@d1
    .local v17, "e$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@d4
    move-result v4

    #@d5
    if-eqz v4, :cond_4

    #@d7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@da
    move-result-object v16

    #@db
    check-cast v16, Ljava/util/Map$Entry;

    #@dd
    .line 572
    .local v16, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@e0
    move-result-object v4

    #@e1
    check-cast v4, Ljava/lang/Integer;

    #@e3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@e6
    move-result v5

    #@e7
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@ea
    move-result-object v4

    #@eb
    check-cast v4, Ljava/lang/Integer;

    #@ed
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@f0
    move-result v4

    #@f1
    .line 571
    move-object/from16 v0, p0

    #@f3
    move-object/from16 v1, v18

    #@f5
    invoke-direct {v0, v12, v5, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    #@f8
    goto :goto_3

    #@f9
    .line 575
    .end local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@fb
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@fe
    move-result-object v27

    #@ff
    .line 576
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@102
    move-result-object v17

    #@103
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@106
    move-result v4

    #@107
    if-eqz v4, :cond_5

    #@109
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10c
    move-result-object v16

    #@10d
    check-cast v16, Ljava/util/Map$Entry;

    #@10f
    .line 578
    .restart local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@112
    move-result-object v4

    #@113
    check-cast v4, Ljava/lang/Integer;

    #@115
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@118
    move-result v5

    #@119
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@11c
    move-result-object v4

    #@11d
    check-cast v4, Ljava/lang/Integer;

    #@11f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@122
    move-result v4

    #@123
    .line 577
    move-object/from16 v0, p0

    #@125
    move-object/from16 v1, v18

    #@127
    invoke-direct {v0, v12, v5, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    #@12a
    goto :goto_4

    #@12b
    .line 581
    .end local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@12d
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@130
    move-result-object v27

    #@131
    .line 582
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@134
    move-result-object v17

    #@135
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@138
    move-result v4

    #@139
    if-eqz v4, :cond_6

    #@13b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13e
    move-result-object v16

    #@13f
    check-cast v16, Ljava/util/Map$Entry;

    #@141
    .line 584
    .restart local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@144
    move-result-object v4

    #@145
    check-cast v4, Ljava/lang/Integer;

    #@147
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@14a
    move-result v5

    #@14b
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@14e
    move-result-object v4

    #@14f
    check-cast v4, Ljava/lang/Integer;

    #@151
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@154
    move-result v4

    #@155
    .line 583
    move-object/from16 v0, p0

    #@157
    move-object/from16 v1, v18

    #@159
    invoke-direct {v0, v12, v5, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    #@15c
    goto :goto_5

    #@15d
    .line 587
    .end local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    #@15f
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@162
    move-result-object v27

    #@163
    .line 588
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@166
    move-result-object v17

    #@167
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@16a
    move-result v4

    #@16b
    if-eqz v4, :cond_7

    #@16d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@170
    move-result-object v16

    #@171
    check-cast v16, Ljava/util/Map$Entry;

    #@173
    .line 590
    .restart local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@176
    move-result-object v4

    #@177
    check-cast v4, Ljava/lang/Integer;

    #@179
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@17c
    move-result v5

    #@17d
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@180
    move-result-object v4

    #@181
    check-cast v4, Ljava/lang/Integer;

    #@183
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@186
    move-result v4

    #@187
    .line 589
    move-object/from16 v0, p0

    #@189
    move-object/from16 v1, v18

    #@18b
    invoke-direct {v0, v12, v5, v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@18e
    goto :goto_6

    #@18f
    .line 593
    .end local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    if-eqz v12, :cond_8

    #@191
    .line 594
    :try_start_e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@194
    .line 599
    :cond_8
    const-wide/16 v4, -0x1

    #@196
    cmp-long v4, v22, v4

    #@198
    if-nez v4, :cond_9

    #@19a
    .line 600
    new-instance v4, Lcom/google/android/mms/MmsException;

    #@19c
    const-string/jumbo v5, "Error! ID of the message: -1."

    #@19f
    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@1a2
    throw v4

    #@1a3
    .line 604
    :cond_9
    move-object/from16 v0, p0

    #@1a5
    move-wide/from16 v1, v22

    #@1a7
    move-object/from16 v3, v18

    #@1a9
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V

    #@1ac
    .line 606
    const/16 v4, 0x8c

    #@1ae
    move-object/from16 v0, v18

    #@1b0
    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@1b3
    move-result v21

    #@1b4
    .line 607
    .local v21, "msgType":I
    new-instance v11, Lcom/google/android/mms/pdu/PduBody;

    #@1b6
    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    #@1b9
    .line 611
    .local v11, "body":Lcom/google/android/mms/pdu/PduBody;
    const/16 v4, 0x84

    #@1bb
    move/from16 v0, v21

    #@1bd
    if-eq v0, v4, :cond_a

    #@1bf
    .line 612
    const/16 v4, 0x80

    #@1c1
    move/from16 v0, v21

    #@1c3
    if-ne v0, v4, :cond_b

    #@1c5
    .line 613
    :cond_a
    move-object/from16 v0, p0

    #@1c7
    move-wide/from16 v1, v22

    #@1c9
    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->loadParts(J)[Lcom/google/android/mms/pdu/PduPart;

    #@1cc
    move-result-object v24

    #@1cd
    .line 614
    .local v24, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v24, :cond_b

    #@1cf
    .line 615
    move-object/from16 v0, v24

    #@1d1
    array-length v0, v0

    #@1d2
    move/from16 v25, v0

    #@1d4
    .line 616
    .local v25, "partsNum":I
    const/16 v19, 0x0

    #@1d6
    .local v19, "i":I
    :goto_7
    move/from16 v0, v19

    #@1d8
    move/from16 v1, v25

    #@1da
    if-ge v0, v1, :cond_b

    #@1dc
    .line 617
    aget-object v4, v24, v19

    #@1de
    invoke-virtual {v11, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    #@1e1
    .line 616
    add-int/lit8 v19, v19, 0x1

    #@1e3
    goto :goto_7

    #@1e4
    .line 622
    .end local v19    # "i":I
    .end local v24    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local v25    # "partsNum":I
    :cond_b
    packed-switch v21, :pswitch_data_0

    #@1e7
    .line 667
    new-instance v4, Lcom/google/android/mms/MmsException;

    #@1e9
    .line 668
    new-instance v5, Ljava/lang/StringBuilder;

    #@1eb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1ee
    const-string/jumbo v6, "Unrecognized PDU type: "

    #@1f1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v5

    #@1f5
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1f8
    move-result-object v6

    #@1f9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v5

    #@1fd
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@200
    move-result-object v5

    #@201
    .line 667
    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@204
    throw v4

    #@205
    .line 624
    :pswitch_0
    new-instance v26, Lcom/google/android/mms/pdu/NotificationInd;

    #@207
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    #@209
    move-object/from16 v1, v18

    #@20b
    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    #@20e
    .line 671
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_8
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@210
    monitor-enter v5

    #@211
    .line 672
    if-eqz v26, :cond_e

    #@213
    .line 673
    :try_start_f
    sget-boolean v4, Lcom/google/android/mms/pdu/PduPersister;->-assertionsDisabled:Z

    #@215
    if-nez v4, :cond_d

    #@217
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@219
    move-object/from16 v0, p1

    #@21b
    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21e
    move-result-object v4

    #@21f
    if-nez v4, :cond_c

    #@221
    const/4 v4, 0x1

    #@222
    :goto_9
    if-nez v4, :cond_d

    #@224
    new-instance v4, Ljava/lang/AssertionError;

    #@226
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@229
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    #@22a
    .line 671
    :catchall_5
    move-exception v4

    #@22b
    move-object v13, v14

    #@22c
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :goto_a
    monitor-exit v5

    #@22d
    throw v4

    #@22e
    .line 627
    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1
    :try_start_10
    new-instance v26, Lcom/google/android/mms/pdu/DeliveryInd;

    #@230
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    #@232
    move-object/from16 v1, v18

    #@234
    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@237
    .line 628
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    #@238
    .line 630
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_2
    new-instance v26, Lcom/google/android/mms/pdu/ReadOrigInd;

    #@23a
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    #@23c
    move-object/from16 v1, v18

    #@23e
    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@241
    .line 631
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    #@242
    .line 633
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_3
    new-instance v26, Lcom/google/android/mms/pdu/RetrieveConf;

    #@244
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    #@246
    move-object/from16 v1, v18

    #@248
    invoke-direct {v0, v1, v11}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    #@24b
    .line 634
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    #@24c
    .line 636
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_4
    new-instance v26, Lcom/google/android/mms/pdu/SendReq;

    #@24e
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    #@250
    move-object/from16 v1, v18

    #@252
    invoke-direct {v0, v1, v11}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    #@255
    .line 637
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    #@256
    .line 639
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_5
    new-instance v26, Lcom/google/android/mms/pdu/AcknowledgeInd;

    #@258
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    #@25a
    move-object/from16 v1, v18

    #@25c
    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@25f
    .line 640
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    #@260
    .line 642
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_6
    new-instance v26, Lcom/google/android/mms/pdu/NotifyRespInd;

    #@262
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    #@264
    move-object/from16 v1, v18

    #@266
    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@269
    .line 643
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    #@26a
    .line 645
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_7
    new-instance v26, Lcom/google/android/mms/pdu/ReadRecInd;

    #@26c
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v26

    #@26e
    move-object/from16 v1, v18

    #@270
    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@273
    .line 646
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    #@274
    .line 663
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_8
    new-instance v4, Lcom/google/android/mms/MmsException;

    #@276
    .line 664
    new-instance v5, Ljava/lang/StringBuilder;

    #@278
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27b
    const-string/jumbo v6, "Unsupported PDU type: "

    #@27e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v5

    #@282
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@285
    move-result-object v6

    #@286
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v5

    #@28a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28d
    move-result-object v5

    #@28e
    .line 663
    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@291
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    #@292
    .line 673
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_c
    const/4 v4, 0x0

    #@293
    goto :goto_9

    #@294
    .line 675
    :cond_d
    :try_start_11
    new-instance v13, Lcom/google/android/mms/util/PduCacheEntry;

    #@296
    move-object/from16 v0, v26

    #@298
    move/from16 v1, v20

    #@29a
    move-wide/from16 v2, v28

    #@29c
    invoke-direct {v13, v0, v1, v2, v3}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    #@29f
    .line 676
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_12
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@2a1
    move-object/from16 v0, p1

    #@2a3
    invoke-virtual {v4, v0, v13}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    #@2a6
    .line 678
    :goto_b
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@2a8
    const/4 v6, 0x0

    #@2a9
    move-object/from16 v0, p1

    #@2ab
    invoke-virtual {v4, v0, v6}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    #@2ae
    .line 679
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@2b0
    invoke-virtual {v4}, Lcom/google/android/mms/util/PduCache;->notifyAll()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    #@2b3
    monitor-exit v5

    #@2b4
    .line 682
    return-object v26

    #@2b5
    .line 671
    .end local v11    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v17    # "e$iterator":Ljava/util/Iterator;
    .end local v18    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v21    # "msgType":I
    .end local v22    # "msgId":J
    .end local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v27    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catchall_6
    move-exception v4

    #@2b6
    monitor-exit v5

    #@2b7
    throw v4

    #@2b8
    .restart local v11    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v17    # "e$iterator":Ljava/util/Iterator;
    .restart local v18    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v21    # "msgType":I
    .restart local v22    # "msgId":J
    .restart local v26    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v27    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catchall_7
    move-exception v4

    #@2b9
    goto/16 :goto_a

    #@2bb
    .line 535
    .end local v11    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v17    # "e$iterator":Ljava/util/Iterator;
    .end local v18    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v21    # "msgType":I
    .end local v22    # "msgId":J
    .end local v27    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catchall_8
    move-exception v4

    #@2bc
    move-object v13, v14

    #@2bd
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    goto/16 :goto_1

    #@2bf
    .end local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v11    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v17    # "e$iterator":Ljava/util/Iterator;
    .restart local v18    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v21    # "msgType":I
    .restart local v22    # "msgId":J
    .local v26, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v27    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_e
    move-object v13, v14

    #@2c0
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v13    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    goto :goto_b

    #@2c1
    .line 622
    nop

    #@2c2
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p1, "from"    # Landroid/net/Uri;
    .param p2, "to"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1526
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@4
    move-result-wide v8

    #@5
    .line 1527
    .local v8, "msgId":J
    const-wide/16 v0, -0x1

    #@7
    cmp-long v0, v8, v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1528
    new-instance v0, Lcom/google/android/mms/MmsException;

    #@d
    const-string/jumbo v1, "Error! ID of the message: -1."

    #@10
    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 1532
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    #@16
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v6

    #@1a
    check-cast v6, Ljava/lang/Integer;

    #@1c
    .line 1533
    .local v6, "msgBox":Ljava/lang/Integer;
    if-nez v6, :cond_1

    #@1e
    .line 1534
    new-instance v0, Lcom/google/android/mms/MmsException;

    #@20
    .line 1535
    const-string/jumbo v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    #@23
    .line 1534
    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 1541
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    #@29
    const/4 v0, 0x1

    #@2a
    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    #@2d
    .line 1542
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "msg_box"

    #@30
    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@33
    .line 1543
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@35
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@37
    move-object v2, p1

    #@38
    move-object v5, v4

    #@39
    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@3c
    .line 1544
    invoke-static {p2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    #@3f
    move-result-object v0

    #@40
    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    .locals 46
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1244
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    if-nez p2, :cond_0

    #@2
    .line 1245
    new-instance v6, Lcom/google/android/mms/MmsException;

    #@4
    const-string/jumbo v7, "Uri may not be null."

    #@7
    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@a
    throw v6

    #@b
    .line 1247
    :cond_0
    const-wide/16 v34, -0x1

    #@d
    .line 1249
    .local v34, "msgId":J
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-wide v34

    #@11
    .line 1253
    :goto_0
    const-wide/16 v6, -0x1

    #@13
    cmp-long v6, v34, v6

    #@15
    if-eqz v6, :cond_1

    #@17
    const/16 v26, 0x1

    #@19
    .line 1255
    .local v26, "existingUri":Z
    :goto_1
    if-nez v26, :cond_2

    #@1b
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    #@1d
    move-object/from16 v0, p2

    #@1f
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    if-nez v6, :cond_2

    #@25
    .line 1256
    new-instance v6, Lcom/google/android/mms/MmsException;

    #@27
    .line 1257
    const-string/jumbo v7, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    #@2a
    .line 1256
    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v6

    #@2e
    .line 1250
    .end local v26    # "existingUri":Z
    :catch_0
    move-exception v22

    #@2f
    .local v22, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    #@30
    .line 1253
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/16 v26, 0x0

    #@32
    .restart local v26    # "existingUri":Z
    goto :goto_1

    #@33
    .line 1262
    :cond_2
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@35
    monitor-enter v7

    #@36
    .line 1265
    :try_start_1
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@38
    move-object/from16 v0, p2

    #@3a
    invoke-virtual {v6, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_3

    #@40
    .line 1270
    :try_start_2
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@42
    invoke-virtual {v6}, Lcom/google/android/mms/util/PduCache;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    :cond_3
    :goto_2
    monitor-exit v7

    #@46
    .line 1276
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@48
    move-object/from16 v0, p2

    #@4a
    invoke-virtual {v6, v0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    #@4d
    .line 1278
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    #@50
    move-result-object v28

    #@51
    .line 1279
    .local v28, "header":Lcom/google/android/mms/pdu/PduHeaders;
    const/16 v16, 0x0

    #@53
    .line 1280
    .local v16, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v9, Landroid/content/ContentValues;

    #@55
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    #@58
    .line 1283
    .local v9, "values":Landroid/content/ContentValues;
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@5a
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@5d
    move-result-object v40

    #@5e
    .line 1284
    .local v40, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v40 .. v40}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v24

    #@62
    .local v24, "e$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v6

    #@66
    if-eqz v6, :cond_5

    #@68
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v23

    #@6c
    check-cast v23, Ljava/util/Map$Entry;

    #@6e
    .line 1285
    .local v23, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@71
    move-result-object v6

    #@72
    check-cast v6, Ljava/lang/Integer;

    #@74
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@77
    move-result v27

    #@78
    .line 1286
    .local v27, "field":I
    move-object/from16 v0, v28

    #@7a
    move/from16 v1, v27

    #@7c
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@7f
    move-result-object v25

    #@80
    .line 1287
    .local v25, "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v25, :cond_4

    #@82
    .line 1288
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@84
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    move-result-object v17

    #@8c
    check-cast v17, Ljava/lang/String;

    #@8e
    .line 1289
    .local v17, "charsetColumn":Ljava/lang/String;
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@91
    move-result-object v6

    #@92
    check-cast v6, Ljava/lang/String;

    #@94
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    #@97
    move-result-object v7

    #@98
    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@9b
    move-result-object v7

    #@9c
    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9f
    .line 1290
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    #@a2
    move-result v6

    #@a3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a6
    move-result-object v6

    #@a7
    move-object/from16 v0, v17

    #@a9
    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@ac
    goto :goto_3

    #@ad
    .line 1271
    .end local v9    # "values":Landroid/content/ContentValues;
    .end local v16    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v17    # "charsetColumn":Ljava/lang/String;
    .end local v23    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v24    # "e$iterator":Ljava/util/Iterator;
    .end local v25    # "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v27    # "field":I
    .end local v28    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v40    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :catch_1
    move-exception v19

    #@ae
    .line 1272
    .local v19, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v6, "PduPersister"

    #@b1
    const-string/jumbo v8, "persist1: "

    #@b4
    move-object/from16 v0, v19

    #@b6
    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b9
    goto :goto_2

    #@ba
    .line 1262
    .end local v19    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    #@bb
    monitor-exit v7

    #@bc
    throw v6

    #@bd
    .line 1294
    .restart local v9    # "values":Landroid/content/ContentValues;
    .restart local v16    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v24    # "e$iterator":Ljava/util/Iterator;
    .restart local v28    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v40    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_5
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@bf
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@c2
    move-result-object v40

    #@c3
    .line 1295
    invoke-interface/range {v40 .. v40}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c6
    move-result-object v24

    #@c7
    :cond_6
    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@ca
    move-result v6

    #@cb
    if-eqz v6, :cond_7

    #@cd
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d0
    move-result-object v23

    #@d1
    check-cast v23, Ljava/util/Map$Entry;

    #@d3
    .line 1296
    .restart local v23    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d6
    move-result-object v6

    #@d7
    check-cast v6, Ljava/lang/Integer;

    #@d9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@dc
    move-result v6

    #@dd
    move-object/from16 v0, v28

    #@df
    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@e2
    move-result-object v41

    #@e3
    .line 1297
    .local v41, "text":[B
    if-eqz v41, :cond_6

    #@e5
    .line 1298
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@e8
    move-result-object v6

    #@e9
    check-cast v6, Ljava/lang/String;

    #@eb
    invoke-static/range {v41 .. v41}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@ee
    move-result-object v7

    #@ef
    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@f2
    goto :goto_4

    #@f3
    .line 1302
    .end local v23    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v41    # "text":[B
    :cond_7
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@f5
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@f8
    move-result-object v40

    #@f9
    .line 1303
    invoke-interface/range {v40 .. v40}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@fc
    move-result-object v24

    #@fd
    :cond_8
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@100
    move-result v6

    #@101
    if-eqz v6, :cond_9

    #@103
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@106
    move-result-object v23

    #@107
    check-cast v23, Ljava/util/Map$Entry;

    #@109
    .line 1304
    .restart local v23    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@10c
    move-result-object v6

    #@10d
    check-cast v6, Ljava/lang/Integer;

    #@10f
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@112
    move-result v6

    #@113
    move-object/from16 v0, v28

    #@115
    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@118
    move-result v15

    #@119
    .line 1305
    .local v15, "b":I
    if-eqz v15, :cond_8

    #@11b
    .line 1306
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@11e
    move-result-object v6

    #@11f
    check-cast v6, Ljava/lang/String;

    #@121
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@124
    move-result-object v7

    #@125
    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@128
    goto :goto_5

    #@129
    .line 1310
    .end local v15    # "b":I
    .end local v23    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_9
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    #@12b
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@12e
    move-result-object v40

    #@12f
    .line 1311
    invoke-interface/range {v40 .. v40}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@132
    move-result-object v24

    #@133
    :cond_a
    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@136
    move-result v6

    #@137
    if-eqz v6, :cond_b

    #@139
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13c
    move-result-object v23

    #@13d
    check-cast v23, Ljava/util/Map$Entry;

    #@13f
    .line 1312
    .restart local v23    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@142
    move-result-object v6

    #@143
    check-cast v6, Ljava/lang/Integer;

    #@145
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@148
    move-result v6

    #@149
    move-object/from16 v0, v28

    #@14b
    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@14e
    move-result-wide v30

    #@14f
    .line 1313
    .local v30, "l":J
    const-wide/16 v6, -0x1

    #@151
    cmp-long v6, v30, v6

    #@153
    if-eqz v6, :cond_a

    #@155
    .line 1314
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@158
    move-result-object v6

    #@159
    check-cast v6, Ljava/lang/String;

    #@15b
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15e
    move-result-object v7

    #@15f
    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@162
    goto :goto_6

    #@163
    .line 1319
    .end local v23    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v30    # "l":J
    :cond_b
    new-instance v13, Ljava/util/HashMap;

    #@165
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    #@167
    array-length v6, v6

    #@168
    invoke-direct {v13, v6}, Ljava/util/HashMap;-><init>(I)V

    #@16b
    .line 1321
    .local v13, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    #@16d
    const/4 v6, 0x0

    #@16e
    array-length v8, v7

    #@16f
    :goto_7
    if-ge v6, v8, :cond_e

    #@171
    aget v12, v7, v6

    #@173
    .line 1322
    .local v12, "addrType":I
    const/4 v14, 0x0

    #@174
    .line 1323
    .local v14, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v10, 0x89

    #@176
    if-ne v12, v10, :cond_d

    #@178
    .line 1324
    move-object/from16 v0, v28

    #@17a
    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@17d
    move-result-object v43

    #@17e
    .line 1325
    .local v43, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v43, :cond_c

    #@180
    .line 1326
    const/4 v10, 0x1

    #@181
    new-array v14, v10, [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@183
    .line 1327
    .local v14, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v10, 0x0

    #@184
    aput-object v43, v14, v10

    #@186
    .line 1332
    .end local v14    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v43    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_c
    :goto_8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@189
    move-result-object v10

    #@18a
    invoke-virtual {v13, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18d
    .line 1321
    add-int/lit8 v6, v6, 0x1

    #@18f
    goto :goto_7

    #@190
    .line 1330
    .local v14, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_d
    move-object/from16 v0, v28

    #@192
    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@195
    move-result-object v14

    #@196
    .local v14, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_8

    #@197
    .line 1335
    .end local v12    # "addrType":I
    .end local v14    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_e
    new-instance v38, Ljava/util/HashSet;

    #@199
    invoke-direct/range {v38 .. v38}, Ljava/util/HashSet;-><init>()V

    #@19c
    .line 1336
    .local v38, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    #@19f
    move-result v33

    #@1a0
    .line 1341
    .local v33, "msgType":I
    const/16 v6, 0x82

    #@1a2
    move/from16 v0, v33

    #@1a4
    if-eq v0, v6, :cond_f

    #@1a6
    .line 1342
    const/16 v6, 0x84

    #@1a8
    move/from16 v0, v33

    #@1aa
    if-ne v0, v6, :cond_15

    #@1ac
    .line 1344
    :cond_f
    :goto_9
    packed-switch v33, :pswitch_data_0

    #@1af
    .line 1368
    :cond_10
    :goto_a
    :pswitch_0
    const-wide/16 v44, 0x0

    #@1b1
    .line 1369
    .local v44, "threadId":J
    if-eqz p3, :cond_11

    #@1b3
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    #@1b6
    move-result v6

    #@1b7
    if-eqz v6, :cond_16

    #@1b9
    .line 1374
    :cond_11
    :goto_b
    const-string/jumbo v6, "thread_id"

    #@1bc
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1bf
    move-result-object v7

    #@1c0
    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@1c3
    .line 1379
    .end local v44    # "threadId":J
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1c6
    move-result-wide v20

    #@1c7
    .line 1382
    .local v20, "dummyId":J
    const/16 v42, 0x1

    #@1c9
    .line 1385
    .local v42, "textOnly":Z
    const/16 v32, 0x0

    #@1cb
    .line 1388
    .local v32, "messageSize":I
    move-object/from16 v0, p1

    #@1cd
    instance-of v6, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    #@1cf
    if-eqz v6, :cond_18

    #@1d1
    .line 1389
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    #@1d3
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    #@1d6
    move-result-object v16

    #@1d7
    .line 1391
    .local v16, "body":Lcom/google/android/mms/pdu/PduBody;
    if-eqz v16, :cond_18

    #@1d9
    .line 1392
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    #@1dc
    move-result v37

    #@1dd
    .line 1393
    .local v37, "partsNum":I
    const/4 v6, 0x2

    #@1de
    move/from16 v0, v37

    #@1e0
    if-le v0, v6, :cond_13

    #@1e2
    .line 1398
    const/16 v42, 0x0

    #@1e4
    .line 1400
    :cond_13
    const/16 v29, 0x0

    #@1e6
    .local v29, "i":I
    :goto_c
    move/from16 v0, v29

    #@1e8
    move/from16 v1, v37

    #@1ea
    if-ge v0, v1, :cond_18

    #@1ec
    .line 1401
    move-object/from16 v0, v16

    #@1ee
    move/from16 v1, v29

    #@1f0
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    #@1f3
    move-result-object v36

    #@1f4
    .line 1402
    .local v36, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/mms/pdu/PduPart;->getDataLength()I

    #@1f7
    move-result v6

    #@1f8
    add-int v32, v32, v6

    #@1fa
    .line 1403
    move-object/from16 v0, p0

    #@1fc
    move-object/from16 v1, v36

    #@1fe
    move-wide/from16 v2, v20

    #@200
    move-object/from16 v4, p5

    #@202
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    #@205
    .line 1407
    invoke-static/range {v36 .. v36}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    #@208
    move-result-object v18

    #@209
    .line 1408
    .local v18, "contentType":Ljava/lang/String;
    if-eqz v18, :cond_14

    #@20b
    const-string/jumbo v6, "application/smil"

    #@20e
    move-object/from16 v0, v18

    #@210
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@213
    move-result v6

    #@214
    if-eqz v6, :cond_17

    #@216
    .line 1400
    :cond_14
    :goto_d
    add-int/lit8 v29, v29, 0x1

    #@218
    goto :goto_c

    #@219
    .line 1343
    .end local v18    # "contentType":Ljava/lang/String;
    .end local v20    # "dummyId":J
    .end local v29    # "i":I
    .end local v32    # "messageSize":I
    .end local v36    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v37    # "partsNum":I
    .end local v42    # "textOnly":Z
    .local v16, "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_15
    const/16 v6, 0x80

    #@21b
    move/from16 v0, v33

    #@21d
    if-ne v0, v6, :cond_12

    #@21f
    goto :goto_9

    #@220
    .line 1347
    :pswitch_1
    const/16 v6, 0x89

    #@222
    const/4 v7, 0x0

    #@223
    move-object/from16 v0, p0

    #@225
    move-object/from16 v1, v38

    #@227
    invoke-direct {v0, v6, v1, v13, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    #@22a
    .line 1355
    if-eqz p4, :cond_10

    #@22c
    .line 1356
    const/16 v6, 0x97

    #@22e
    const/4 v7, 0x1

    #@22f
    move-object/from16 v0, p0

    #@231
    move-object/from16 v1, v38

    #@233
    invoke-direct {v0, v6, v1, v13, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    #@236
    .line 1361
    const/16 v6, 0x82

    #@238
    const/4 v7, 0x1

    #@239
    move-object/from16 v0, p0

    #@23b
    move-object/from16 v1, v38

    #@23d
    invoke-direct {v0, v6, v1, v13, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    #@240
    goto/16 :goto_a

    #@242
    .line 1365
    :pswitch_2
    const/16 v6, 0x97

    #@244
    const/4 v7, 0x0

    #@245
    move-object/from16 v0, p0

    #@247
    move-object/from16 v1, v38

    #@249
    invoke-direct {v0, v6, v1, v13, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    #@24c
    goto/16 :goto_a

    #@24e
    .line 1372
    .restart local v44    # "threadId":J
    :cond_16
    move-object/from16 v0, p0

    #@250
    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@252
    move-object/from16 v0, v38

    #@254
    invoke-static {v6, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    #@257
    move-result-wide v44

    #@258
    goto/16 :goto_b

    #@25a
    .line 1409
    .end local v44    # "threadId":J
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .local v16, "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v18    # "contentType":Ljava/lang/String;
    .restart local v20    # "dummyId":J
    .restart local v29    # "i":I
    .restart local v32    # "messageSize":I
    .restart local v36    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v37    # "partsNum":I
    .restart local v42    # "textOnly":Z
    :cond_17
    const-string/jumbo v6, "text/plain"

    #@25d
    move-object/from16 v0, v18

    #@25f
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@262
    move-result v6

    #@263
    if-nez v6, :cond_14

    #@265
    .line 1410
    const/16 v42, 0x0

    #@267
    goto :goto_d

    #@268
    .line 1417
    .end local v16    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v18    # "contentType":Ljava/lang/String;
    .end local v29    # "i":I
    .end local v36    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v37    # "partsNum":I
    :cond_18
    const-string/jumbo v7, "text_only"

    #@26b
    if-eqz v42, :cond_1c

    #@26d
    const/4 v6, 0x1

    #@26e
    :goto_e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@271
    move-result-object v6

    #@272
    invoke-virtual {v9, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@275
    .line 1420
    const-string/jumbo v6, "m_size"

    #@278
    invoke-virtual {v9, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    #@27b
    move-result-object v6

    #@27c
    if-nez v6, :cond_19

    #@27e
    .line 1421
    const-string/jumbo v6, "m_size"

    #@281
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@284
    move-result-object v7

    #@285
    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@288
    .line 1424
    :cond_19
    const/16 v39, 0x0

    #@28a
    .line 1425
    .local v39, "res":Landroid/net/Uri;
    if-eqz v26, :cond_1d

    #@28c
    .line 1426
    move-object/from16 v39, p2

    #@28e
    .line 1427
    .local v39, "res":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@290
    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@292
    move-object/from16 v0, p0

    #@294
    iget-object v7, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@296
    const/4 v10, 0x0

    #@297
    const/4 v11, 0x0

    #@298
    move-object/from16 v8, p2

    #@29a
    invoke-static/range {v6 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@29d
    .line 1438
    :goto_f
    new-instance v9, Landroid/content/ContentValues;

    #@29f
    .end local v9    # "values":Landroid/content/ContentValues;
    const/4 v6, 0x1

    #@2a0
    invoke-direct {v9, v6}, Landroid/content/ContentValues;-><init>(I)V

    #@2a3
    .line 1439
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "mid"

    #@2a6
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a9
    move-result-object v7

    #@2aa
    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@2ad
    .line 1440
    move-object/from16 v0, p0

    #@2af
    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    iget-object v7, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@2b5
    .line 1441
    new-instance v8, Ljava/lang/StringBuilder;

    #@2b7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2ba
    const-string/jumbo v10, "content://mms/"

    #@2bd
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v8

    #@2c1
    move-wide/from16 v0, v20

    #@2c3
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v8

    #@2c7
    const-string/jumbo v10, "/part"

    #@2ca
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cd
    move-result-object v8

    #@2ce
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d1
    move-result-object v8

    #@2d2
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@2d5
    move-result-object v8

    #@2d6
    .line 1442
    const/4 v10, 0x0

    #@2d7
    const/4 v11, 0x0

    #@2d8
    .line 1440
    invoke-static/range {v6 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@2db
    .line 1448
    if-nez v26, :cond_1a

    #@2dd
    .line 1449
    new-instance v6, Ljava/lang/StringBuilder;

    #@2df
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2e2
    move-object/from16 v0, p2

    #@2e4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e7
    move-result-object v6

    #@2e8
    const-string/jumbo v7, "/"

    #@2eb
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v6

    #@2ef
    move-wide/from16 v0, v34

    #@2f1
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f4
    move-result-object v6

    #@2f5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f8
    move-result-object v6

    #@2f9
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@2fc
    move-result-object v39

    #@2fd
    .line 1453
    :cond_1a
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    #@2ff
    const/4 v6, 0x0

    #@300
    array-length v8, v7

    #@301
    :goto_10
    if-ge v6, v8, :cond_1f

    #@303
    aget v12, v7, v6

    #@305
    .line 1454
    .restart local v12    # "addrType":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@308
    move-result-object v10

    #@309
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30c
    move-result-object v14

    #@30d
    check-cast v14, [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@30f
    .line 1455
    .restart local v14    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v14, :cond_1b

    #@311
    .line 1456
    move-object/from16 v0, p0

    #@313
    move-wide/from16 v1, v34

    #@315
    invoke-direct {v0, v1, v2, v12, v14}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    #@318
    .line 1453
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    #@31a
    goto :goto_10

    #@31b
    .line 1417
    .end local v12    # "addrType":I
    .end local v14    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v39    # "res":Landroid/net/Uri;
    :cond_1c
    const/4 v6, 0x0

    #@31c
    goto/16 :goto_e

    #@31e
    .line 1429
    .local v39, "res":Landroid/net/Uri;
    :cond_1d
    move-object/from16 v0, p0

    #@320
    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@322
    move-object/from16 v0, p0

    #@324
    iget-object v7, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@326
    move-object/from16 v0, p2

    #@328
    invoke-static {v6, v7, v0, v9}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@32b
    move-result-object v39

    #@32c
    .line 1430
    .local v39, "res":Landroid/net/Uri;
    if-nez v39, :cond_1e

    #@32e
    .line 1431
    new-instance v6, Lcom/google/android/mms/MmsException;

    #@330
    const-string/jumbo v7, "persist() failed: return null."

    #@333
    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@336
    throw v6

    #@337
    .line 1435
    :cond_1e
    invoke-static/range {v39 .. v39}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@33a
    move-result-wide v34

    #@33b
    goto/16 :goto_f

    #@33d
    .line 1460
    :cond_1f
    return-object v39

    #@33e
    .line 1344
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;
    .locals 10
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    #@0
    .prologue
    .line 706
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v9, "content://mms/"

    #@8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v8

    #@c
    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f
    move-result-object v8

    #@10
    const-string/jumbo v9, "/part"

    #@13
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object v5

    #@1f
    .line 707
    .local v5, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    #@21
    const/16 v8, 0x8

    #@23
    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    #@26
    .line 709
    .local v7, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    #@29
    move-result v0

    #@2a
    .line 710
    .local v0, "charset":I
    if-eqz v0, :cond_0

    #@2c
    .line 711
    const-string/jumbo v8, "chset"

    #@2f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v9

    #@33
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@36
    .line 714
    :cond_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 715
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_8

    #@3c
    .line 718
    const-string/jumbo v8, "image/jpg"

    #@3f
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v8

    #@43
    if-eqz v8, :cond_1

    #@45
    .line 719
    const-string/jumbo v1, "image/jpeg"

    #@48
    .line 722
    :cond_1
    const-string/jumbo v8, "ct"

    #@4b
    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 724
    const-string/jumbo v8, "application/smil"

    #@51
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v8

    #@55
    if-eqz v8, :cond_2

    #@57
    .line 725
    const-string/jumbo v8, "seq"

    #@5a
    const/4 v9, -0x1

    #@5b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@62
    .line 731
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    #@65
    move-result-object v8

    #@66
    if-eqz v8, :cond_3

    #@68
    .line 732
    new-instance v2, Ljava/lang/String;

    #@6a
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    #@6d
    move-result-object v8

    #@6e
    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    #@71
    .line 733
    .local v2, "fileName":Ljava/lang/String;
    const-string/jumbo v8, "fn"

    #@74
    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@77
    .line 736
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    #@7a
    move-result-object v8

    #@7b
    if-eqz v8, :cond_4

    #@7d
    .line 737
    new-instance v3, Ljava/lang/String;

    #@7f
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    #@82
    move-result-object v8

    #@83
    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    #@86
    .line 738
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v8, "name"

    #@89
    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@8c
    .line 741
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    #@8d
    .line 742
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    #@90
    move-result-object v8

    #@91
    if-eqz v8, :cond_5

    #@93
    .line 743
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    #@96
    move-result-object v8

    #@97
    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@9a
    move-result-object v6

    #@9b
    .line 744
    const-string/jumbo v9, "cd"

    #@9e
    move-object v8, v6

    #@9f
    check-cast v8, Ljava/lang/String;

    #@a1
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@a4
    .line 747
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    #@a7
    move-result-object v8

    #@a8
    if-eqz v8, :cond_6

    #@aa
    .line 748
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    #@ad
    move-result-object v8

    #@ae
    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@b1
    move-result-object v6

    #@b2
    .line 749
    .restart local v6    # "value":Ljava/lang/Object;
    const-string/jumbo v9, "cid"

    #@b5
    move-object v8, v6

    #@b6
    check-cast v8, Ljava/lang/String;

    #@b8
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@bb
    .line 752
    .end local v6    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    #@be
    move-result-object v8

    #@bf
    if-eqz v8, :cond_7

    #@c1
    .line 753
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    #@c4
    move-result-object v8

    #@c5
    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@c8
    move-result-object v6

    #@c9
    .line 754
    .restart local v6    # "value":Ljava/lang/Object;
    const-string/jumbo v9, "cl"

    #@cc
    move-object v8, v6

    #@cd
    check-cast v8, Ljava/lang/String;

    #@cf
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@d2
    .line 757
    .end local v6    # "value":Ljava/lang/Object;
    :cond_7
    iget-object v8, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@d4
    iget-object v9, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@d6
    invoke-static {v8, v9, v5, v7}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@d9
    move-result-object v4

    #@da
    .line 758
    .local v4, "res":Landroid/net/Uri;
    if-nez v4, :cond_9

    #@dc
    .line 759
    new-instance v8, Lcom/google/android/mms/MmsException;

    #@de
    const-string/jumbo v9, "Failed to persist part, return null."

    #@e1
    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@e4
    throw v8

    #@e5
    .line 728
    .end local v4    # "res":Landroid/net/Uri;
    :cond_8
    new-instance v8, Lcom/google/android/mms/MmsException;

    #@e7
    const-string/jumbo v9, "MIME type of the part must be set."

    #@ea
    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    #@ed
    throw v8

    #@ee
    .line 762
    .restart local v4    # "res":Landroid/net/Uri;
    :cond_9
    invoke-direct {p0, p1, v4, v1, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    #@f1
    .line 765
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    #@f4
    .line 767
    return-object v4
.end method

.method public release()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1577
    const-string/jumbo v1, "content://mms/9223372036854775807/part"

    #@4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    .line 1578
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@a
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@c
    invoke-static {v1, v2, v0, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@f
    .line 1576
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 34
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;

    #@0
    .prologue
    .line 988
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@2
    monitor-enter v5

    #@3
    .line 991
    :try_start_0
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@5
    move-object/from16 v0, p1

    #@7
    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 996
    :try_start_1
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@f
    invoke-virtual {v4}, Lcom/google/android/mms/util/PduCache;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    :cond_0
    :goto_0
    monitor-exit v5

    #@13
    .line 1002
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@15
    move-object/from16 v0, p1

    #@17
    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    #@1a
    .line 1004
    new-instance v7, Landroid/content/ContentValues;

    #@1c
    const/16 v4, 0xa

    #@1e
    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    #@21
    .line 1005
    .local v7, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    #@24
    move-result-object v12

    #@25
    .line 1006
    .local v12, "contentType":[B
    if-eqz v12, :cond_1

    #@27
    .line 1007
    const-string/jumbo v4, "ct_t"

    #@2a
    invoke-static {v12}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 1010
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    #@34
    move-result-wide v14

    #@35
    .line 1011
    .local v14, "date":J
    const-wide/16 v4, -0x1

    #@37
    cmp-long v4, v14, v4

    #@39
    if-eqz v4, :cond_2

    #@3b
    .line 1012
    const-string/jumbo v4, "date"

    #@3e
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@45
    .line 1015
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    #@48
    move-result v13

    #@49
    .line 1016
    .local v13, "deliveryReport":I
    if-eqz v13, :cond_3

    #@4b
    .line 1017
    const-string/jumbo v4, "d_rpt"

    #@4e
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@55
    .line 1020
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    #@58
    move-result-wide v18

    #@59
    .line 1021
    .local v18, "expiry":J
    const-wide/16 v4, -0x1

    #@5b
    cmp-long v4, v18, v4

    #@5d
    if-eqz v4, :cond_4

    #@5f
    .line 1022
    const-string/jumbo v4, "exp"

    #@62
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@69
    .line 1025
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    #@6c
    move-result-object v22

    #@6d
    .line 1026
    .local v22, "msgClass":[B
    if-eqz v22, :cond_5

    #@6f
    .line 1027
    const-string/jumbo v4, "m_cls"

    #@72
    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@79
    .line 1030
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    #@7c
    move-result v23

    #@7d
    .line 1031
    .local v23, "priority":I
    if-eqz v23, :cond_6

    #@7f
    .line 1032
    const-string/jumbo v4, "pri"

    #@82
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@89
    .line 1035
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    #@8c
    move-result v26

    #@8d
    .line 1036
    .local v26, "readReport":I
    if-eqz v26, :cond_7

    #@8f
    .line 1037
    const-string/jumbo v4, "rr"

    #@92
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@95
    move-result-object v5

    #@96
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@99
    .line 1040
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    #@9c
    move-result-object v29

    #@9d
    .line 1041
    .local v29, "transId":[B
    if-eqz v29, :cond_8

    #@9f
    .line 1042
    const-string/jumbo v4, "tr_id"

    #@a2
    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@a9
    .line 1045
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    #@ac
    move-result-object v28

    #@ad
    .line 1046
    .local v28, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v28, :cond_c

    #@af
    .line 1047
    const-string/jumbo v4, "sub"

    #@b2
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    #@b5
    move-result-object v5

    #@b6
    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@bd
    .line 1048
    const-string/jumbo v4, "sub_cs"

    #@c0
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    #@c3
    move-result v5

    #@c4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v5

    #@c8
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@cb
    .line 1053
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    #@ce
    move-result-wide v20

    #@cf
    .line 1054
    .local v20, "messageSize":J
    const-wide/16 v4, 0x0

    #@d1
    cmp-long v4, v20, v4

    #@d3
    if-lez v4, :cond_9

    #@d5
    .line 1055
    const-string/jumbo v4, "m_size"

    #@d8
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@db
    move-result-object v5

    #@dc
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@df
    .line 1058
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    #@e2
    move-result-object v17

    #@e3
    .line 1059
    .local v17, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    new-instance v27, Ljava/util/HashSet;

    #@e5
    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    #@e8
    .line 1060
    .local v27, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    #@ea
    const/4 v4, 0x0

    #@eb
    array-length v8, v6

    #@ec
    move v5, v4

    #@ed
    :goto_2
    if-ge v5, v8, :cond_f

    #@ef
    aget v10, v6, v5

    #@f1
    .line 1061
    .local v10, "addrType":I
    const/4 v11, 0x0

    #@f2
    .line 1062
    .local v11, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v4, 0x89

    #@f4
    if-ne v10, v4, :cond_d

    #@f6
    .line 1063
    move-object/from16 v0, v17

    #@f8
    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@fb
    move-result-object v32

    #@fc
    .line 1064
    .local v32, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v32, :cond_a

    #@fe
    .line 1065
    const/4 v4, 0x1

    #@ff
    new-array v11, v4, [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@101
    .line 1066
    .local v11, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v4, 0x0

    #@102
    aput-object v32, v11, v4

    #@104
    .line 1072
    .end local v11    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v32    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    :goto_3
    if-eqz v11, :cond_e

    #@106
    .line 1073
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@109
    move-result-wide v24

    #@10a
    .line 1074
    .local v24, "msgId":J
    move-object/from16 v0, p0

    #@10c
    move-wide/from16 v1, v24

    #@10e
    invoke-direct {v0, v1, v2, v10, v11}, Lcom/google/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    #@111
    .line 1075
    const/16 v4, 0x97

    #@113
    if-ne v10, v4, :cond_e

    #@115
    .line 1076
    const/4 v4, 0x0

    #@116
    array-length v9, v11

    #@117
    :goto_4
    if-ge v4, v9, :cond_e

    #@119
    aget-object v32, v11, v4

    #@11b
    .line 1077
    .restart local v32    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v32, :cond_b

    #@11d
    .line 1078
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    #@120
    move-result-object v33

    #@121
    move-object/from16 v0, v27

    #@123
    move-object/from16 v1, v33

    #@125
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@128
    .line 1076
    :cond_b
    add-int/lit8 v4, v4, 0x1

    #@12a
    goto :goto_4

    #@12b
    .line 997
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v10    # "addrType":I
    .end local v12    # "contentType":[B
    .end local v13    # "deliveryReport":I
    .end local v14    # "date":J
    .end local v17    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v18    # "expiry":J
    .end local v20    # "messageSize":J
    .end local v22    # "msgClass":[B
    .end local v23    # "priority":I
    .end local v24    # "msgId":J
    .end local v26    # "readReport":I
    .end local v27    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v28    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29    # "transId":[B
    .end local v32    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v16

    #@12c
    .line 998
    .local v16, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v4, "PduPersister"

    #@12f
    const-string/jumbo v6, "updateHeaders: "

    #@132
    move-object/from16 v0, v16

    #@134
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@137
    goto/16 :goto_0

    #@139
    .line 988
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    #@13a
    monitor-exit v5

    #@13b
    throw v4

    #@13c
    .line 1050
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v12    # "contentType":[B
    .restart local v13    # "deliveryReport":I
    .restart local v14    # "date":J
    .restart local v18    # "expiry":J
    .restart local v22    # "msgClass":[B
    .restart local v23    # "priority":I
    .restart local v26    # "readReport":I
    .restart local v28    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v29    # "transId":[B
    :cond_c
    const-string/jumbo v4, "sub"

    #@13f
    const-string/jumbo v5, ""

    #@142
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@145
    goto :goto_1

    #@146
    .line 1069
    .restart local v10    # "addrType":I
    .local v11, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v17    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v20    # "messageSize":J
    .restart local v27    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v0, v17

    #@148
    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@14b
    move-result-object v11

    #@14c
    .local v11, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_3

    #@14d
    .line 1060
    .end local v11    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_e
    add-int/lit8 v4, v5, 0x1

    #@14f
    move v5, v4

    #@150
    goto :goto_2

    #@151
    .line 1084
    .end local v10    # "addrType":I
    :cond_f
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    #@154
    move-result v4

    #@155
    if-nez v4, :cond_10

    #@157
    .line 1085
    move-object/from16 v0, p0

    #@159
    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@15b
    move-object/from16 v0, v27

    #@15d
    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    #@160
    move-result-wide v30

    #@161
    .line 1086
    .local v30, "threadId":J
    const-string/jumbo v4, "thread_id"

    #@164
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@167
    move-result-object v5

    #@168
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@16b
    .line 1089
    .end local v30    # "threadId":J
    :cond_10
    move-object/from16 v0, p0

    #@16d
    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@16f
    move-object/from16 v0, p0

    #@171
    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@173
    const/4 v8, 0x0

    #@174
    const/4 v9, 0x0

    #@175
    move-object/from16 v6, p1

    #@177
    invoke-static/range {v4 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@17a
    .line 987
    return-void
.end method

.method public updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1158
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :try_start_0
    sget-object v21, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@2
    monitor-enter v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3
    .line 1159
    :try_start_1
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@5
    move-object/from16 v0, v20

    #@7
    move-object/from16 v1, p1

    #@9
    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    move-result v20

    #@d
    if-eqz v20, :cond_0

    #@f
    .line 1164
    :try_start_2
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@11
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/util/PduCache;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14
    .line 1168
    :goto_0
    :try_start_3
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@16
    move-object/from16 v0, v20

    #@18
    move-object/from16 v1, p1

    #@1a
    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v6

    #@1e
    check-cast v6, Lcom/google/android/mms/util/PduCacheEntry;

    #@20
    .line 1169
    .local v6, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v6, :cond_0

    #@22
    .line 1170
    invoke-virtual {v6}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    #@25
    move-result-object v20

    #@26
    check-cast v20, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    #@28
    move-object/from16 v0, v20

    #@2a
    move-object/from16 v1, p2

    #@2c
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    #@2f
    .line 1175
    .end local v6    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_0
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@31
    const/16 v22, 0x1

    #@33
    move-object/from16 v0, v20

    #@35
    move-object/from16 v1, p1

    #@37
    move/from16 v2, v22

    #@39
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    :try_start_4
    monitor-exit v21

    #@3d
    .line 1178
    new-instance v18, Ljava/util/ArrayList;

    #@3f
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@42
    .line 1179
    .local v18, "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    new-instance v19, Ljava/util/HashMap;

    #@44
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    #@47
    .line 1181
    .local v19, "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    #@4a
    move-result v17

    #@4b
    .line 1182
    .local v17, "partsNum":I
    new-instance v20, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const/16 v21, 0x28

    #@52
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    move-result-object v10

    #@56
    .line 1183
    .local v10, "filter":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    #@57
    .local v11, "i":I
    :goto_1
    move/from16 v0, v17

    #@59
    if-ge v11, v0, :cond_3

    #@5b
    .line 1184
    move-object/from16 v0, p2

    #@5d
    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    #@60
    move-result-object v14

    #@61
    .line 1185
    .local v14, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    #@64
    move-result-object v16

    #@65
    .line 1186
    .local v16, "partUri":Landroid/net/Uri;
    if-eqz v16, :cond_2

    #@67
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@6a
    move-result-object v20

    #@6b
    const-string/jumbo v21, "mms"

    #@6e
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@71
    move-result v20

    #@72
    if-eqz v20, :cond_2

    #@74
    .line 1189
    move-object/from16 v0, v19

    #@76
    move-object/from16 v1, v16

    #@78
    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    .line 1193
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    #@7e
    move-result v20

    #@7f
    const/16 v21, 0x1

    #@81
    move/from16 v0, v20

    #@83
    move/from16 v1, v21

    #@85
    if-le v0, v1, :cond_1

    #@87
    .line 1194
    const-string/jumbo v20, " AND "

    #@8a
    move-object/from16 v0, v20

    #@8c
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    .line 1197
    :cond_1
    const-string/jumbo v20, "_id"

    #@92
    move-object/from16 v0, v20

    #@94
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 1198
    const-string/jumbo v20, "!="

    #@9a
    move-object/from16 v0, v20

    #@9c
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    .line 1199
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@a2
    move-result-object v20

    #@a3
    move-object/from16 v0, v20

    #@a5
    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a8
    .line 1183
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@aa
    goto :goto_1

    #@ab
    .line 1165
    .end local v10    # "filter":Ljava/lang/StringBuilder;
    .end local v11    # "i":I
    .end local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v16    # "partUri":Landroid/net/Uri;
    .end local v17    # "partsNum":I
    .end local v18    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v19    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :catch_0
    move-exception v7

    #@ac
    .line 1166
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v20, "PduPersister"

    #@af
    const-string/jumbo v22, "updateParts: "

    #@b2
    move-object/from16 v0, v20

    #@b4
    move-object/from16 v1, v22

    #@b6
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b9
    goto/16 :goto_0

    #@bb
    .line 1158
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v20

    #@bc
    :try_start_6
    monitor-exit v21

    #@bd
    throw v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@be
    .line 1220
    :catchall_1
    move-exception v20

    #@bf
    .line 1221
    sget-object v21, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@c1
    monitor-enter v21

    #@c2
    .line 1222
    :try_start_7
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@c4
    const/16 v23, 0x0

    #@c6
    move-object/from16 v0, v22

    #@c8
    move-object/from16 v1, p1

    #@ca
    move/from16 v2, v23

    #@cc
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    #@cf
    .line 1223
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@d1
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/util/PduCache;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@d4
    monitor-exit v21

    #@d5
    .line 1220
    throw v20

    #@d6
    .line 1187
    .restart local v10    # "filter":Ljava/lang/StringBuilder;
    .restart local v11    # "i":I
    .restart local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v16    # "partUri":Landroid/net/Uri;
    .restart local v17    # "partsNum":I
    .restart local v18    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .restart local v19    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :cond_2
    :try_start_8
    move-object/from16 v0, v18

    #@d8
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@db
    goto :goto_2

    #@dc
    .line 1202
    .end local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v16    # "partUri":Landroid/net/Uri;
    :cond_3
    const/16 v20, 0x29

    #@de
    move/from16 v0, v20

    #@e0
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e3
    .line 1204
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@e6
    move-result-wide v12

    #@e7
    .line 1207
    .local v12, "msgId":J
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    #@eb
    move-object/from16 v21, v0

    #@ed
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    #@f1
    move-object/from16 v22, v0

    #@f3
    .line 1208
    new-instance v20, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    sget-object v23, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    #@fa
    move-object/from16 v0, v20

    #@fc
    move-object/from16 v1, v23

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v20

    #@102
    const-string/jumbo v23, "/"

    #@105
    move-object/from16 v0, v20

    #@107
    move-object/from16 v1, v23

    #@109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v20

    #@10d
    move-object/from16 v0, v20

    #@10f
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@112
    move-result-object v20

    #@113
    const-string/jumbo v23, "/part"

    #@116
    move-object/from16 v0, v20

    #@118
    move-object/from16 v1, v23

    #@11a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v20

    #@11e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v20

    #@122
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@125
    move-result-object v23

    #@126
    .line 1209
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    #@129
    move-result v20

    #@12a
    const/16 v24, 0x2

    #@12c
    move/from16 v0, v20

    #@12e
    move/from16 v1, v24

    #@130
    if-le v0, v1, :cond_4

    #@132
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v20

    #@136
    :goto_3
    const/16 v24, 0x0

    #@138
    .line 1207
    move-object/from16 v0, v21

    #@13a
    move-object/from16 v1, v22

    #@13c
    move-object/from16 v2, v23

    #@13e
    move-object/from16 v3, v20

    #@140
    move-object/from16 v4, v24

    #@142
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@145
    .line 1212
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@148
    move-result-object v15

    #@149
    .local v15, "part$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@14c
    move-result v20

    #@14d
    if-eqz v20, :cond_5

    #@14f
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@152
    move-result-object v14

    #@153
    check-cast v14, Lcom/google/android/mms/pdu/PduPart;

    #@155
    .line 1213
    .restart local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    #@157
    move-object/from16 v1, p3

    #@159
    invoke-virtual {v0, v14, v12, v13, v1}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    #@15c
    goto :goto_4

    #@15d
    .line 1209
    .end local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v15    # "part$iterator":Ljava/util/Iterator;
    :cond_4
    const/16 v20, 0x0

    #@15f
    goto :goto_3

    #@160
    .line 1217
    .restart local v15    # "part$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@163
    move-result-object v20

    #@164
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@167
    move-result-object v9

    #@168
    .local v9, "e$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@16b
    move-result v20

    #@16c
    if-eqz v20, :cond_6

    #@16e
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@171
    move-result-object v8

    #@172
    check-cast v8, Ljava/util/Map$Entry;

    #@174
    .line 1218
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@177
    move-result-object v20

    #@178
    check-cast v20, Landroid/net/Uri;

    #@17a
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@17d
    move-result-object v21

    #@17e
    check-cast v21, Lcom/google/android/mms/pdu/PduPart;

    #@180
    move-object/from16 v0, p0

    #@182
    move-object/from16 v1, v20

    #@184
    move-object/from16 v2, v21

    #@186
    move-object/from16 v3, p3

    #@188
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@18b
    goto :goto_5

    #@18c
    .line 1221
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :cond_6
    sget-object v21, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@18e
    monitor-enter v21

    #@18f
    .line 1222
    :try_start_9
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@191
    const/16 v22, 0x0

    #@193
    move-object/from16 v0, v20

    #@195
    move-object/from16 v1, p1

    #@197
    move/from16 v2, v22

    #@199
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    #@19c
    .line 1223
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    #@19e
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/util/PduCache;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@1a1
    monitor-exit v21

    #@1a2
    .line 1155
    return-void

    #@1a3
    .line 1221
    :catchall_2
    move-exception v20

    #@1a4
    monitor-exit v21

    #@1a5
    throw v20

    #@1a6
    .end local v9    # "e$iterator":Ljava/util/Iterator;
    .end local v10    # "filter":Ljava/lang/StringBuilder;
    .end local v11    # "i":I
    .end local v12    # "msgId":J
    .end local v15    # "part$iterator":Ljava/util/Iterator;
    .end local v17    # "partsNum":I
    .end local v18    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v19    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :catchall_3
    move-exception v20

    #@1a7
    monitor-exit v21

    #@1a8
    throw v20
.end method
