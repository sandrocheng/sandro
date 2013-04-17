.class final Lays;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Layr;


# direct methods
.method constructor <init>(Layr;)V
    .locals 0

    iput-object p1, p0, Lays;->a:Layr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lays;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    iget-object v1, p0, Lays;->a:Layr;

    iget-object v1, v1, Layr;->a:Layp;

    invoke-static {v1}, Layp;->e(Layp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Layp;->b(Layp;Ljava/lang/String;)V

    return-void
.end method
