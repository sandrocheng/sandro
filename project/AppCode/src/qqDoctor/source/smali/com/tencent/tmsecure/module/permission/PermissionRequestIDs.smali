.class public final Lcom/tencent/tmsecure/module/permission/PermissionRequestIDs;
.super Ljava/lang/Object;


# static fields
.field public static final R_CALL:I = 0x0

.field public static final R_GET_CELL_LOCATION:I = 0xa

.field public static final R_GET_DEVICE_ID:I = 0x7

.field public static final R_GET_GPS_INFO:I = 0xc

.field public static final R_GET_ICC_SERIALNUMBERl:I = 0x6

.field public static final R_GET_NEIGHTBORING_CELL_LOCATION:I = 0xb

.field public static final R_GET_SUBSCRIBERID:I = 0x8

.field public static final R_NULL:I = -0x1

.field public static final R_PHONE_STATE_LISTEN:I = 0x5

.field public static final R_SEND_SMS:I = 0x1

.field public static final R_SHOW_NOTIFICATION:I = 0xe

.field public static final R_TELEPHONE_TAPPING:I = 0xd

.field public static final R_VISIT_CALL_LOG_DATA:I = 0x3

.field public static final R_VISIT_CONTACT_DATA:I = 0x2

.field public static final R_VISIT_INTERNET:I = 0x9

.field public static final R_VISIT_SMS_DATA:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCount()I
    .locals 1

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestIDs;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
