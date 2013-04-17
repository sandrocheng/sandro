.class final Lbsg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private synthetic a:Lbsb;


# direct methods
.method constructor <init>(Lbsb;)V
    .locals 0

    iput-object p1, p0, Lbsg;->a:Lbsb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3

    iget-object v0, p0, Lbsg;->a:Lbsb;

    iput p2, v0, Lbsb;->c:I

    iget-object v0, p0, Lbsg;->a:Lbsb;

    iput p3, v0, Lbsb;->d:I

    iget-object v0, p0, Lbsg;->a:Lbsb;

    invoke-static {v0}, Lbsb;->a(Lbsb;)Ljl;

    move-result-object v0

    iget-object v0, v0, Ljl;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "scanTimeHour"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbsg;->a:Lbsb;

    invoke-static {v0}, Lbsb;->a(Lbsb;)Ljl;

    move-result-object v0

    iget-object v0, v0, Ljl;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "scanTimeMini"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbsg;->a:Lbsb;

    invoke-static {v0}, Lbsb;->a(Lbsb;)Ljl;

    move-result-object v0

    iget-object v0, v0, Ljl;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "scan_time_modified"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbsg;->a:Lbsb;

    invoke-static {v0}, Lbsb;->b(Lbsb;)V

    iget-object v0, p0, Lbsg;->a:Lbsb;

    invoke-virtual {v0}, Lbsb;->b()V

    return-void
.end method
