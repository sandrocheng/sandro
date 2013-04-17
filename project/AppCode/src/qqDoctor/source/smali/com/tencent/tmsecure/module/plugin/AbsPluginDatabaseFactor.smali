.class public abstract Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;->b:I

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginDatabaseFactor;->b:I

    return v0
.end method

.method public abstract onCreate(Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onUpgrade(Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
