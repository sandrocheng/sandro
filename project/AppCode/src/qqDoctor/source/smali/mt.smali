.class public final Lmt;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;


# instance fields
.field public n:J

.field public o:J

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lmt;->a:I

    const/4 v0, 0x2

    sput v0, Lmt;->b:I

    const-string v0, "id"

    sput-object v0, Lmt;->c:Ljava/lang/String;

    const-string v0, "scan_time"

    sput-object v0, Lmt;->d:Ljava/lang/String;

    const-string v0, "apk_type"

    sput-object v0, Lmt;->e:Ljava/lang/String;

    const-string v0, "wipe_advice"

    sput-object v0, Lmt;->f:Ljava/lang/String;

    const-string v0, "description"

    sput-object v0, Lmt;->g:Ljava/lang/String;

    const-string v0, "apk_name"

    sput-object v0, Lmt;->h:Ljava/lang/String;

    const-string v0, "pkg_name"

    sput-object v0, Lmt;->i:Ljava/lang/String;

    const-string v0, "apk_path"

    sput-object v0, Lmt;->j:Ljava/lang/String;

    const-string v0, "inflect_name"

    sput-object v0, Lmt;->k:Ljava/lang/String;

    const-string v0, "wipe_state"

    sput-object v0, Lmt;->l:Ljava/lang/String;

    const-string v0, "safe_type"

    sput-object v0, Lmt;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
