.class final Lrs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lrr;


# direct methods
.method constructor <init>(Lrr;)V
    .locals 0

    iput-object p1, p0, Lrs;->a:Lrr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lrs;->a:Lrr;

    iget-object v0, v0, Lrr;->a:Lrn$a;

    iget-object v0, v0, Lrn$a;->c:Lkw;

    invoke-virtual {v0}, Lkw;->T()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Leb;->a(Ljava/util/List;)V

    return-void
.end method
