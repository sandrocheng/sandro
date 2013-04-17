.class public final Lbsx;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z

.field private static volatile b:Z

.field private static c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lbsx;->a:Z

    sput-boolean v0, Lbsx;->b:Z

    new-instance v0, Lbsy;

    invoke-direct {v0}, Lbsy;-><init>()V

    sput-object v0, Lbsx;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()V
    .locals 5

    sget-boolean v0, Lbsx;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lbsx;->a:Z

    new-instance v0, Lbtl;

    const-string v1, "tms"

    invoke-direct {v0, v1}, Lbtl;-><init>(Ljava/lang/String;)V

    const-string v1, "reportlc"

    iget-object v2, v0, Lbtl;->c:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lbtl;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Lbtl;)V

    invoke-virtual {v1}, Lbsz;->start()V

    goto :goto_0
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lbsx;->b:Z

    return-void
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lbsx;->a:Z

    return v0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lbsx;->b:Z

    return v0
.end method

.method static synthetic d()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Lbsx;->c:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic e()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lbsx;->a:Z

    return-void
.end method
