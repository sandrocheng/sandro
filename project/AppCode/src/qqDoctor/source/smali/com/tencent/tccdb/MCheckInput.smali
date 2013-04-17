.class public Lcom/tencent/tccdb/MCheckInput;
.super Ljava/lang/Object;


# static fields
.field public static final CHECK_INPUT_SENDER:I = 0x1

.field public static final CHECK_INPUT_SMS:I = 0x2

.field public static final SMS_IN:I = 0x0

.field public static final SMS_OUT:I = 0x1

.field public static final SMS_TYPE_COLOR:I = 0x1

.field public static final SMS_TYPE_COMMON:I = 0x0

.field public static final SMS_TYPE_WAP_PUSH:I = 0x2


# instance fields
.field public checkFlag:I

.field public sender:Ljava/lang/String;

.field public sms:Ljava/lang/String;

.field public smsInOut:I

.field public smsType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/tencent/tccdb/MCheckInput;->sender:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcom/tencent/tccdb/MCheckInput;->sms:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/tccdb/MCheckInput;->checkFlag:I

    iput p4, p0, Lcom/tencent/tccdb/MCheckInput;->smsType:I

    iput p5, p0, Lcom/tencent/tccdb/MCheckInput;->smsInOut:I

    return-void
.end method
