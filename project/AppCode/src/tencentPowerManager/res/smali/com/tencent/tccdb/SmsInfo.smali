.class public Lcom/tencent/tccdb/SmsInfo;
.super Ljava/lang/Object;


# instance fields
.field public sender:Ljava/lang/String;

.field public sms:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tccdb/SmsInfo;->sender:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/tccdb/SmsInfo;->sms:Ljava/lang/String;

    return-void
.end method
