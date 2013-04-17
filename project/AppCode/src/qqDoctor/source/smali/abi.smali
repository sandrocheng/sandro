.class final Labi;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Labh;


# direct methods
.method constructor <init>(Labh;)V
    .locals 0

    iput-object p1, p0, Labi;->a:Labh;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Labi;->a:Labh;

    invoke-static {v0}, Labh;->a(Labh;)V

    return-void
.end method
