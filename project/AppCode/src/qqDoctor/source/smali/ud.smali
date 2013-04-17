.class final Lud;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Luc;


# direct methods
.method constructor <init>(Luc;)V
    .locals 0

    iput-object p1, p0, Lud;->a:Luc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lud;->a:Luc;

    iget-object v0, v0, Luc;->c:Lsy;

    iget-object v1, p0, Lud;->a:Luc;

    iget-object v1, v1, Luc;->a:Ljava/lang/String;

    iget-object v2, p0, Lud;->a:Luc;

    iget-object v2, v2, Luc;->b:Ldv;

    invoke-virtual {v0, v1, v2}, Lsy;->a(Ljava/lang/String;Ldv;)V

    return-void
.end method
