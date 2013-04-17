.class final Ll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lde;

.field private synthetic b:Z

.field private synthetic c:Landroid/content/Context;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Z

.field private synthetic h:Law;


# direct methods
.method constructor <init>(Lde;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLaw;)V
    .locals 0

    iput-object p1, p0, Ll;->a:Lde;

    iput-boolean p2, p0, Ll;->b:Z

    iput-object p3, p0, Ll;->c:Landroid/content/Context;

    iput-object p4, p0, Ll;->d:Ljava/lang/String;

    iput-object p5, p0, Ll;->e:Ljava/lang/String;

    iput-object p6, p0, Ll;->f:Ljava/lang/String;

    iput-boolean p7, p0, Ll;->g:Z

    iput-object p8, p0, Ll;->h:Law;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Ll;->a:Lde;

    invoke-virtual {v0}, Lde;->a()V

    iget-boolean v0, p0, Ll;->b:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Ll;->a:Lde;

    iget-object v1, p0, Ll;->c:Landroid/content/Context;

    iget-object v3, p0, Ll;->d:Ljava/lang/String;

    iget-object v4, p0, Ll;->e:Ljava/lang/String;

    iget-object v5, p0, Ll;->f:Ljava/lang/String;

    iget-boolean v6, p0, Ll;->g:Z

    iget-object v7, p0, Ll;->h:Law;

    invoke-static/range {v0 .. v7}, Le;->a(Lde;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLaw;)V

    :goto_1
    return-void

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ll;->a:Lde;

    iget-object v1, p0, Ll;->c:Landroid/content/Context;

    iget-object v3, p0, Ll;->d:Ljava/lang/String;

    iget-object v4, p0, Ll;->e:Ljava/lang/String;

    iget-object v5, p0, Ll;->f:Ljava/lang/String;

    iget-boolean v6, p0, Ll;->g:Z

    iget-object v7, p0, Ll;->h:Law;

    move v2, v8

    invoke-static/range {v0 .. v7}, Le;->a(Lde;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLaw;)V

    goto :goto_1
.end method
