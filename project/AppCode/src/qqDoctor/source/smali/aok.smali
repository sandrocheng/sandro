.class final Laok;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    iput-object p1, p0, Laok;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Laok;->a:Laoa;

    invoke-static {v0}, Laoa;->S(Laoa;)V

    iget-object v0, p0, Laok;->a:Laoa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laoa;->a(Laoa;Ljava/lang/String;)V

    iget-object v0, p0, Laok;->a:Laoa;

    invoke-static {v0}, Laoa;->T(Laoa;)V

    return-void
.end method
