.class final Lng;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lnd;


# direct methods
.method constructor <init>(Lnd;)V
    .locals 0

    iput-object p1, p0, Lng;->a:Lnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lvh;->g()I

    move-result v0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1, v0}, Lho;->J(I)V

    iget-object v1, p0, Lng;->a:Lnd;

    const/16 v2, 0x66bd

    invoke-virtual {v1, v2, v0}, Lnd;->b(II)V

    return-void
.end method
