.class final Lcom/avg/toolkit/d/b;
.super Lcom/avg/toolkit/d/c;


# direct methods
.method constructor <init>(Landroid/app/Service;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/toolkit/d/c;-><init>(Landroid/app/Service;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/d/b;->a:Landroid/app/Service;

    invoke-static {v0}, Lcom/avg/toolkit/d/a;->b(Landroid/app/Service;)V

    return-void
.end method
