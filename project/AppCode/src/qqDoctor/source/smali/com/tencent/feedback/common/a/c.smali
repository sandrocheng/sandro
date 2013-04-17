.class public final Lcom/tencent/feedback/common/a/c;
.super Ljava/lang/Object;
.source "DBConst.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "record"

    aput-object v1, v0, v3

    const-string v1, "monitor"

    aput-object v1, v0, v4

    const-string v1, "eupdata"

    aput-object v1, v0, v5

    const-string v1, "ao"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "grayuser"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/feedback/common/a/c;->a:[Ljava/lang/String;

    .line 76
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "CREATE TABLE ao ( _id  INTEGER PRIMARY KEY ,_time int ,_type int ,_prority int ,_length int ,_datas blob , _key text , _alltimes text , _count int  ) "

    aput-object v1, v0, v3

    const-string v1, "CREATE TABLE count ( _id  INTEGER PRIMARY KEY ,_countid text unique ,_prority int , _local int, _stime int ,_utime int ,_ctime int ,_cparams text  ) "

    aput-object v1, v0, v4

    const-string v1, "CREATE TABLE grayuser ( _id  INTEGER PRIMARY KEY ,_time int ,_name text unique  ) "

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/feedback/common/a/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
