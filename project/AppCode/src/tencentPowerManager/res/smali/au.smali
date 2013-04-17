.class public final Lau;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Law;


# direct methods
.method public constructor <init>(Law;)V
    .locals 0

    iput-object p1, p0, Lau;->a:Law;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lau;->a:Law;

    iget-object v0, v0, Law;->a:Las;

    iget-object v0, v0, Las;->a:Lar;

    iget-object v1, p0, Lau;->a:Law;

    iget-object v1, v1, Law;->a:Las;

    iget-object v1, v1, Las;->a:Lar;

    iget-object v1, v1, Lar;->d:Lfx;

    iget-object v2, p0, Lau;->a:Law;

    iget-object v2, v2, Law;->a:Las;

    iget-object v2, v2, Las;->a:Lar;

    iget-object v2, v2, Lar;->g:Lfz;

    invoke-virtual {v0, v1}, Lar;->b(Lfx;)V

    return-void
.end method
