.class public final Lcom/ijinshan/kinghelper/firewall/a/g;
.super Ljava/lang/Object;
.source "FirewallRuleManager.java"

# interfaces
.implements Lcom/ijinshan/kinghelper/firewall/a/h;


# static fields
.field private static final K:J = 0x1L

.field static final j:[Ljava/lang/String;

.field static final k:[Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1790
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/a/g;->j:[Ljava/lang/String;

    .line 1792
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/a/g;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1756
    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 1758
    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    .line 1796
    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1799
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 1804
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1805
    if-ltz v1, :cond_2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_0
    iput v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 1807
    const-string v1, "rule_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1808
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 1810
    const-string v1, "apply_mode"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1811
    if-ltz v1, :cond_3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 1813
    const-string v1, "match_mode"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1814
    if-ltz v1, :cond_4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_2
    iput v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 1817
    const-string v1, "matcher"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1818
    if-ltz v1, :cond_5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 1820
    const-string v1, "owner"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1821
    if-ltz v1, :cond_6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 1823
    const-string v1, "desc"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1824
    if-ltz v1, :cond_7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 1827
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const-string v2, "???"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1830
    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 1833
    :cond_1
    return-object v0

    .line 1805
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1811
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1814
    goto :goto_2

    .line 1818
    :cond_5
    const-string v1, ""

    goto :goto_3

    .line 1821
    :cond_6
    const-string v1, ""

    goto :goto_4

    .line 1824
    :cond_7
    const-string v1, ""

    goto :goto_5
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1839
    const-string v1, "FirewallRule["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    const-string v1, "ruleType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    const-string v1, "applyMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    const-string v1, "matchMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    const-string v1, "matcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    const-string v1, "owner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    const-string v1, "description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
