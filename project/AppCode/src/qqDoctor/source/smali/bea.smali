.class final Lbea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljf;


# direct methods
.method constructor <init>(Ljf;)V
    .locals 0

    iput-object p1, p0, Lbea;->a:Ljf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbea;->a:Ljf;

    invoke-virtual {v0}, Ljf;->b()V

    return-void
.end method
