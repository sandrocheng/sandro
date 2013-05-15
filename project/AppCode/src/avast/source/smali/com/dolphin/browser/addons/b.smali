.class Lcom/dolphin/browser/addons/b;
.super Lcom/dolphin/browser/addons/ai;
.source "AddonService.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/AddonService;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/AddonService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    .line 88
    invoke-direct {p0}, Lcom/dolphin/browser/addons/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/addons/h;->a(I)V

    .line 144
    iget-object v1, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/h;)V

    .line 145
    return-void
.end method

.method public a(Lcom/dolphin/browser/addons/bp;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/addons/h;->a(Lcom/dolphin/browser/addons/bp;)V

    .line 133
    return-void
.end method

.method public a(Lcom/dolphin/browser/addons/bv;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/addons/h;->a(Lcom/dolphin/browser/addons/bv;)V

    .line 128
    return-void
.end method

.method public a(Lcom/dolphin/browser/addons/x;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/addons/h;->a(Lcom/dolphin/browser/addons/x;)V

    .line 138
    return-void
.end method

.method public b()Lcom/dolphin/browser/addons/af;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/addons/h;->a()Lcom/dolphin/browser/addons/af;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/dolphin/browser/addons/bm;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/addons/h;->f()Lcom/dolphin/browser/addons/bm;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/dolphin/browser/addons/bk;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/addons/h;->e()Lcom/dolphin/browser/addons/bk;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/dolphin/browser/addons/aj;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/addons/h;->b()Lcom/dolphin/browser/addons/aj;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/dolphin/browser/addons/az;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/addons/h;->d()Lcom/dolphin/browser/addons/az;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/dolphin/browser/addons/ao;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/addons/h;->c()Lcom/dolphin/browser/addons/ao;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    iget-object v1, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v1}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/addons/AddonService;->b(Lcom/dolphin/browser/addons/h;)V

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->b(Lcom/dolphin/browser/addons/AddonService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/addons/b;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v1}, Lcom/dolphin/browser/addons/AddonService;->c(Lcom/dolphin/browser/addons/AddonService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 151
    return-void
.end method
