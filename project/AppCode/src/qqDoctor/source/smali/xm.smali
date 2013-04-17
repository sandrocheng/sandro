.class final Lxm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lxi$a;


# direct methods
.method constructor <init>(Lxi$a;)V
    .locals 0

    iput-object p1, p0, Lxm;->a:Lxi$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxm;->a:Lxi$a;

    invoke-static {v0}, Lxi;->a(Lxi$a;)V

    invoke-static {}, Lxi;->c()V

    return-void
.end method
