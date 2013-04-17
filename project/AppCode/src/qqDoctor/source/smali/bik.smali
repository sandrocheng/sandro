.class final Lbik;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Lbij;


# direct methods
.method constructor <init>(Lbij;)V
    .locals 0

    iput-object p1, p0, Lbik;->a:Lbij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbik;->a:Lbij;

    iget-object v0, v0, Lbij;->a:Lbig;

    invoke-virtual {v0}, Lbig;->onResume()V

    return-void
.end method
