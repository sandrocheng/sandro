.class final Lav;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lar;


# direct methods
.method constructor <init>(Lar;)V
    .locals 0

    iput-object p1, p0, Lav;->a:Lar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lav;->a:Lar;

    invoke-virtual {v0}, Lar;->e()V

    return-void
.end method
