.class final Lin;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lim;


# direct methods
.method constructor <init>(Lim;)V
    .locals 0

    iput-object p1, p0, Lin;->a:Lim;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lin;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)V

    return-void
.end method
