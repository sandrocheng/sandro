.class public final Ljk;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences$Editor;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Ljk;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljk;->b:Landroid/content/Context;

    iget-object v0, p0, Ljk;->b:Landroid/content/Context;

    const-string v1, "ProfessionalKillerDao"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ljk;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Ljk;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ljk;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Ljk;->a:I

    return v0
.end method


# virtual methods
.method public final a()J
    .locals 3

    iget-object v0, p0, Ljk;->d:Landroid/content/SharedPreferences;

    const-string v1, "new_tag_level"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Ljk;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "new_tag_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Ljk;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "new_tag_level"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
