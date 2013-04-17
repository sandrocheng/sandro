.class final Labl;
.super Ljava/lang/Object;

# interfaces
.implements Labv$b;


# instance fields
.field private synthetic a:Labk;


# direct methods
.method constructor <init>(Labk;)V
    .locals 0

    iput-object p1, p0, Labl;->a:Labk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentApp(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    iget-object v0, p0, Labl;->a:Labk;

    invoke-static {v0, p1}, Labk;->a(Labk;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
