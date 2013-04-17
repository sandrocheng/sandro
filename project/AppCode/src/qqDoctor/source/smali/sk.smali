.class final Lsk;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:Llu;

.field private synthetic b:Lsi;


# direct methods
.method constructor <init>(Lsi;Llu;)V
    .locals 0

    iput-object p1, p0, Lsk;->b:Lsi;

    iput-object p2, p0, Lsk;->a:Llu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 2

    check-cast p1, Llv;

    iget-object v0, p0, Lsk;->a:Llu;

    iget-object v1, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Llu;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lsk;->a:Llu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Llu;->g:Z

    iget-object v0, p0, Lsk;->b:Lsi;

    iget-object v0, v0, Lsi;->b:Lik;

    iget-object v1, p0, Lsk;->a:Llu;

    invoke-virtual {v0, v1}, Lik;->a(Llu;)V

    return-void
.end method
