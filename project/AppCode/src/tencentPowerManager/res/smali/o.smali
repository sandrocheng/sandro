.class public final Lo;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lo;->c:Z

    const-string v0, "http://pmir.3g.qq.com"

    sput-object v0, Lo;->a:Ljava/lang/String;

    sput-boolean v1, Lo;->b:Z

    sput-boolean v1, Lo;->c:Z

    const-string v0, "http://pmir.3g.qq.com"

    sput-object v0, Lo;->a:Ljava/lang/String;

    sput-boolean v1, Lo;->b:Z

    sget-boolean v0, Lo;->c:Z

    return-void
.end method
