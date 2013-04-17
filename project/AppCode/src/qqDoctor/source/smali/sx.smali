.class final Lsx;
.super Ljava/lang/Object;

# interfaces
.implements Labv$b;


# instance fields
.field private synthetic a:Lsv;


# direct methods
.method constructor <init>(Lsv;)V
    .locals 0

    iput-object p1, p0, Lsx;->a:Lsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentApp(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    iget-object v0, p0, Lsx;->a:Lsv;

    invoke-static {v0, p1}, Lsv;->a(Lsv;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
