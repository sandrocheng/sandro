.class public final Lcom/tencent/feedback/common/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "record"

    aput-object v1, v0, v3

    const-string v1, "monitor"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "eupdata"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/feedback/common/a/c;->a:[Ljava/lang/String;

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CREATE TABLE ao ( _id  INTEGER PRIMARY KEY ,_time int ,_type int ,_prority int ,_length int ,_datas blob  ) "

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/feedback/common/a/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
