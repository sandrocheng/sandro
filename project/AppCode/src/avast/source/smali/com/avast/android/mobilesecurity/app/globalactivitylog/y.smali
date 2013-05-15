.class public abstract enum Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;
.super Ljava/lang/Enum;
.source "GlobalActivityLogType.java"


# static fields
.field public static final enum A:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum B:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum C:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum D:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum E:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum F:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum G:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum H:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum I:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum J:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum K:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum L:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum M:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field private static final N:Landroid/util/SparseArray;

.field private static final synthetic P:[Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum b:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum d:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum e:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum f:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum g:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum h:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum i:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum j:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum k:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum l:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum m:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum n:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum o:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum p:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum q:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum r:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum s:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum t:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum u:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum v:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum w:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum x:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum y:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

.field public static final enum z:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;


# instance fields
.field private O:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 25
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/z;

    const-string v1, "APPSHIELD_ON_INSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 50
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ak;

    const-string v1, "APPSHIELD_ON_EXEC"

    invoke-direct {v0, v1, v4, v5}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ak;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->b:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 75
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/av;

    const-string v1, "APPSHIELD_ENABLED"

    invoke-direct {v0, v1, v5, v6}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/av;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 93
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bg;

    const-string v1, "APPSHIELD_DISABLED"

    invoke-direct {v0, v1, v6, v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->d:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 111
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bi;

    const-string v1, "APP_UPDATE"

    invoke-direct {v0, v1, v7, v8}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->e:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 129
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bj;

    const-string v1, "VPS_UPDATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->f:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 152
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bk;

    const-string v1, "VPS_UPDATE_FAILED"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->g:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 182
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bl;

    const-string v1, "VPS_UP_TO_DATE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->h:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 206
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bm;

    const-string v1, "VIRUS_SCANNER_SCAN"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->i:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 244
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/aa;

    const-string v1, "VIRUS_SCANNER_PROBLEMS"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->j:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 280
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ab;

    const-string v1, "ACCOUNT_CONNECT"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->k:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 305
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ac;

    const-string v1, "ACCOUNT_DISCONNECT"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->l:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 328
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ad;

    const-string v1, "APPLOCKING_ENABLED"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ad;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->m:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 346
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ae;

    const-string v1, "APPLOCKING_DISABLED"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->n:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 364
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/af;

    const-string v1, "APPLOCKING_ACCESS_GRANTED"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/af;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->o:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 389
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ag;

    const-string v1, "FIREWALL_ENABLED"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->p:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 417
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ah;

    const-string v1, "FIREWALL_DISABLED"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->q:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 435
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ai;

    const-string v1, "FIREWALL_MODE_CHANGED"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ai;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->r:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 463
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/aj;

    const-string v1, "MESSAGESHIELD_ENABLED"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/aj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->s:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 481
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/al;

    const-string v1, "MESSAGESHIELD_DISABLED"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/al;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->t:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 499
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/am;

    const-string v1, "MESSAGESHIELD_MESSAGE_SCANNED"

    const/16 v2, 0x14

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/am;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->u:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 524
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/an;

    const-string v1, "MESSAGESHIELD_BLOCK_OFFERED"

    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/an;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->v:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 549
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ao;

    const-string v1, "NETWORKMETER_ENABLED"

    const/16 v2, 0x16

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ao;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->w:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 567
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ap;

    const-string v1, "NETWORKMETER_DISABLED"

    const/16 v2, 0x17

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->x:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 585
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/aq;

    const-string v1, "NETWORKMETER_READ_DATA_USAGE"

    const/16 v2, 0x18

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/aq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->y:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 603
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ar;

    const-string v1, "PIN_PROTECTION_ACCESS_GRANTED"

    const/16 v2, 0x19

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ar;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->z:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 628
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/as;

    const-string v1, "PIN_PROTECTION_RECOVERY_SMS_SENT"

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/as;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->A:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 646
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/at;

    const-string v1, "PIN_PROTECTION_RECOVERY_EXPIRED"

    const/16 v2, 0x1b

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/at;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->B:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 665
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/au;

    const-string v1, "PRIVACY_ADVISOR_SCAN"

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/au;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->C:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 704
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/aw;

    const-string v1, "SMS_CALL_FILTER_MESSAGE_BLOCKED"

    const/16 v2, 0x1d

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/aw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->D:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 729
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ax;

    const-string v1, "SMS_CALL_FILTER_CALL_BLOCKED"

    const/16 v2, 0x1e

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ax;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->E:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 761
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ay;

    const-string v1, "WEBSHIELD_URL_SCAN"

    const/16 v2, 0x1f

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->F:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 786
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/az;

    const-string v1, "WEBSHIELD_SCAN_RESULT"

    const/16 v2, 0x20

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/az;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->G:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 841
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ba;

    const-string v1, "WEBSHIELD_AUTOREDIRECT"

    const/16 v2, 0x21

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/ba;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->H:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 866
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bb;

    const-string v1, "WEBSHIELD_ENABLED"

    const/16 v2, 0x22

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->I:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 884
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bc;

    const-string v1, "WEBSHIELD_DISABLED"

    const/16 v2, 0x23

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->J:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 902
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bd;

    const-string v1, "FILESHIELD_ENABLED"

    const/16 v2, 0x24

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->K:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 920
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/be;

    const-string v1, "FILESHIELD_DISABLED"

    const/16 v2, 0x25

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/be;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->L:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 938
    new-instance v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bf;

    const-string v1, "FILESHIELD_SCAN_COUNT"

    const/16 v2, 0x26

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->M:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 24
    const/16 v0, 0x27

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    const/4 v1, 0x0

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->b:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->c:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->d:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->e:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->f:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->g:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->h:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->i:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->j:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->k:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->l:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->m:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->n:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->o:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->p:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->q:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->r:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->s:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->t:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->u:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->v:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->w:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->x:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->y:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->z:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->A:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->B:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->C:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->D:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->E:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->F:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->G:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->H:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->I:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->J:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->K:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->L:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->M:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->P:[Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 967
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->N:Landroid/util/SparseArray;

    .line 970
    const-class v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    .line 971
    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->N:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 973
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 977
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 978
    iput p3, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->O:I

    .line 979
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/avast/android/mobilesecurity/app/globalactivitylog/z;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(I)Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;
    .locals 1
    .parameter

    .prologue
    .line 992
    sget-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->N:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->P:[Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 982
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->O:I

    return v0
.end method

.method public abstract a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    return-void
.end method

.method public abstract a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1031
    const/4 v0, 0x0

    return v0
.end method
