.class final Lw;
.super Laa$a;


# instance fields
.field private synthetic a:Ls$a;


# direct methods
.method constructor <init>(Ls$a;)V
    .locals 0

    iput-object p1, p0, Lw;->a:Ls$a;

    invoke-direct {p0}, Laa$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lw;->a:Ls$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw;->a:Ls$a;

    invoke-virtual {v0}, Ls$a;->b()V

    :cond_0
    return-void
.end method
