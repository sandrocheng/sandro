.class final Lorg/antivirus/tuneup/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/l;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/l;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0, p2}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->b(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/l;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/q;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
