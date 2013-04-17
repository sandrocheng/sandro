.class public final Lgd;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:Z

.field public static d:Z

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x11

    sput v0, Lgd;->a:I

    const-string v0, "http://pmir.3g.qq.com"

    sput-object v0, Lgd;->b:Ljava/lang/String;

    sput-boolean v1, Lgd;->c:Z

    sput-boolean v1, Lgd;->d:Z

    sput-boolean v1, Lgd;->e:Z

    sput-boolean v1, Lgd;->c:Z

    const-string v0, "http://pmir.3g.qq.com"

    sput-object v0, Lgd;->b:Ljava/lang/String;

    sput-boolean v1, Lgd;->d:Z

    sput-boolean v1, Lgd;->e:Z

    return-void
.end method
